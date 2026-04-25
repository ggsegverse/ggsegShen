library(ggseg.extra)
library(ggseg.formats)
library(dplyr)


volume_file <- here::here("data-raw", "shen_2mm_268_parcellation.nii.gz")
lut_file <- here::here("data-raw", "Shen268_LUT.txt")

if (!file.exists(volume_file)) {
  cli::cli_abort("Volume not found: {.path {volume_file}}")
}

vol <- RNifti::readNifti(volume_file)
xform <- RNifti::xform(vol)
arr <- as.array(vol)
label_ids <- sort(unique(as.integer(arr[arr > 0])))

cli::cli_h1("Creating Shen 268-parcel atlas")
cli::cli_alert_info("Found {length(label_ids)} non-zero labels in volume")

centroids <- do.call(rbind, lapply(label_ids, function(l) {
  coords <- which(arr == l, arr.ind = TRUE)
  mni <- xform %*% rbind(t(coords - 1), 1)
  colMeans(t(mni)[, 1:3, drop = FALSE])
}))

lut <- tibble(
  idx = label_ids,
  x = centroids[, 1],
  y = centroids[, 2],
  z = centroids[, 3]
) |>
  mutate(
    type = case_when(
      z < -25 & y < -30 ~ "cerebellar",
      abs(x) < 25 & z > -20 & z < 20 & y > -30 & y < 15 ~ "subcortical",
      TRUE ~ "cortical"
    ),
    hemi_prefix = case_when(
      x > 3 ~ "Right",
      x < -3 ~ "Left",
      TRUE ~ "Mid"
    ),
    label = if_else(
      type == "cortical",
      sprintf("Region_%03d", idx),
      sprintf("%s_Region_%03d", hemi_prefix, idx)
    )
  )

palette <- grDevices::hcl(
  h = seq(15, 375, length.out = nrow(lut) + 1)[seq_len(nrow(lut))],
  c = 90, l = 60
)
rgb_mat <- grDevices::col2rgb(palette)
lut$R <- as.integer(rgb_mat["red", ])
lut$G <- as.integer(rgb_mat["green", ])
lut$B <- as.integer(rgb_mat["blue", ])
lut$A <- 0L

cli::cli_alert_info(
  "Classified: {sum(lut$type == 'cortical')} cortical, \\
   {sum(lut$type == 'subcortical')} subcortical, \\
   {sum(lut$type == 'cerebellar')} cerebellar"
)

lut_out <- lut[, c("idx", "label", "R", "G", "B", "A", "type")]
readr::write_tsv(lut_out, lut_file)

options(ggseg.extra.snapshot_dim = 1600)

atlases <- create_wholebrain_from_volume(
  input_volume = volume_file,
  input_lut = lut_out,
  atlas_name = "shen268",
  output_dir = "data-raw/shen268",
  regheader = TRUE,
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE,
  steps = 1:3
)

cli::cli_h2("Building 1mm anatomical reference volume for subcortical slices")
fs_home <- Sys.getenv("FREESURFER_HOME", "/Applications/freesurfer/7.4.1")
Sys.setenv(FREESURFER_HOME = fs_home)
Sys.setenv(SUBJECTS_DIR = file.path(fs_home, "subjects"))

aparc_aseg_src <- file.path(
  fs_home, "subjects/cvs_avg35_inMNI152/mri/aparc+aseg.mgz"
)
if (!file.exists(aparc_aseg_src)) {
  cli::cli_abort("aparc+aseg source not found: {.path {aparc_aseg_src}}")
}

aparc_aseg_nii <- here::here("data-raw", "aparc_aseg_1mm.nii.gz")
if (!file.exists(aparc_aseg_nii)) {
  system2("mri_convert", c(
    shQuote(aparc_aseg_src), shQuote(aparc_aseg_nii)
  ))
}

cvs_brain_src <- file.path(
  fs_home, "subjects/cvs_avg35_inMNI152/mri/brain.mgz"
)
cvs_brain_mask <- here::here("data-raw", "cvs_brain_mask.nii.gz")
if (!file.exists(cvs_brain_mask)) {
  tmp_brain <- tempfile(fileext = ".nii.gz")
  system2("mri_convert", c(shQuote(cvs_brain_src), shQuote(tmp_brain)))
  bvol <- RNifti::readNifti(tmp_brain)
  bmask <- (as.array(bvol) > 0) * 1L
  storage.mode(bmask) <- "integer"
  RNifti::writeNifti(
    RNifti::asNifti(bmask, reference = bvol), cvs_brain_mask
  )
}

shen_brain_mask <- here::here("data-raw", "shen_brain_mask.nii.gz")
if (!file.exists(shen_brain_mask)) {
  smask <- (arr > 0) * 1L
  storage.mode(smask) <- "integer"
  RNifti::writeNifti(
    RNifti::asNifti(smask, reference = vol), shen_brain_mask
  )
}

shen_to_cvs_lta <- here::here("data-raw", "shen_to_cvs.lta")
if (!file.exists(shen_to_cvs_lta)) {
  cli::cli_alert_info("Co-registering Shen to cvs_avg35 (rigid + scale)")
  system2("mri_coreg", c(
    "--mov", shQuote(shen_brain_mask),
    "--ref", shQuote(cvs_brain_mask),
    "--reg", shQuote(shen_to_cvs_lta),
    "--dof", "12"
  ))
}

shen_1mm <- here::here("data-raw", "shen_1mm_coreg.nii.gz")
if (!file.exists(shen_1mm)) {
  system2("mri_vol2vol", c(
    "--mov", shQuote(volume_file),
    "--targ", shQuote(aparc_aseg_src),
    "--reg", shQuote(shen_to_cvs_lta),
    "--interp", "nearest",
    "--o", shQuote(shen_1mm)
  ))
}

aparc <- RNifti::readNifti(aparc_aseg_nii)
arr_aparc <- as.array(aparc)
shen_subcort_idx <- lut$idx[lut$type == "subcortical"]

cli::cli_alert_info(
  "Resampling each subcortical label with trilinear + argmax \\
   ({length(shen_subcort_idx)} labels)"
)

prob_dim <- dim(arr_aparc)
prob_stack <- array(0, dim = c(prod(prob_dim), length(shen_subcort_idx)))
for (i in seq_along(shen_subcort_idx)) {
  id <- shen_subcort_idx[i]
  bmask_2mm <- tempfile(fileext = ".nii.gz")
  bmask_1mm <- tempfile(fileext = ".nii.gz")
  bmask_arr <- (arr == id) * 1.0
  RNifti::writeNifti(
    RNifti::asNifti(bmask_arr, reference = vol), bmask_2mm
  )
  system2("mri_vol2vol", c(
    "--mov", shQuote(bmask_2mm),
    "--targ", shQuote(aparc_aseg_src),
    "--reg", shQuote(shen_to_cvs_lta),
    "--interp", "trilin",
    "--o", shQuote(bmask_1mm)
  ), stdout = FALSE, stderr = FALSE)
  prob_stack[, i] <- as.numeric(as.array(RNifti::readNifti(bmask_1mm)))
  unlink(c(bmask_2mm, bmask_1mm))
}

argmax_idx <- max.col(prob_stack, ties.method = "first")
max_prob <- prob_stack[
  cbind(seq_len(nrow(prob_stack)), argmax_idx)
]
keep <- max_prob > 0.3

merged <- arr_aparc
shen_smooth <- merged
shen_smooth[] <- 0L
shen_smooth[keep] <- as.integer(shen_subcort_idx[argmax_idx[keep]])
for (id in shen_subcort_idx) {
  merged[shen_smooth == id] <- id
}
storage.mode(merged) <- "integer"

merged_file <- here::here(
  "data-raw", "shen268", "shen268",
  "subcort_anatomical.nii.gz"
)
dir.create(dirname(merged_file), showWarnings = FALSE, recursive = TRUE)
merged_vol <- RNifti::asNifti(merged, reference = aparc)
if (RNifti::orientation(merged_vol) != "RAS") {
  RNifti::orientation(merged_vol) <- "RAS"
}
RNifti::writeNifti(merged_vol, merged_file)

sub_lut <- lut_out[
  lut_out$type == "subcortical",
  c("idx", "label", "R", "G", "B", "A")
]
sub_lut_file <- here::here(
  "data-raw", "shen268", "shen268", "subcort_anatomical_lut.txt"
)
readr::write_tsv(sub_lut, sub_lut_file)

subcort_views <- rbind(
  data.frame(name = "axial_1", type = "axial", start = 85, end = 107),
  data.frame(name = "axial_2", type = "axial", start = 108, end = 130),
  data.frame(name = "coronal_1", type = "coronal", start = 133, end = 154)
)

cli::cli_h2("Creating subcortical atlas with anatomical context")
.shen268_subcortical <- create_subcortical_from_volume(
  input_volume = merged_file,
  input_lut = sub_lut_file,
  atlas_name = "shen268_subcortical",
  views = subcort_views,
  output_dir = here::here("data-raw", "shen268"),
  tolerance = 1,
  smoothness = 2,
  decimate = 0.9,
  dilate = 0,
  skip_existing = FALSE,
  cleanup = FALSE,
  verbose = TRUE
)

cerebellar_idx <- lut$idx[lut$type == "cerebellar"]
cerebellar_mni <- tempfile(fileext = ".nii.gz")
result_arr <- array(0L, dim = dim(arr))
for (id in cerebellar_idx) result_arr[arr == id] <- id
cerebellar_vol <- RNifti::asNifti(result_arr, reference = vol)
if (RNifti::orientation(cerebellar_vol) != "RAS") {
  RNifti::orientation(cerebellar_vol) <- "RAS"
}
RNifti::writeNifti(cerebellar_vol, cerebellar_mni)

cli::cli_h2("Transforming cerebellar volume MNI -> SUIT")
xfm_file <- suit_deformation_field(template = "MNI152NLin6AsymC")
cerebellar_suit <- tempfile(fileext = ".nii.gz")
transform_mni_to_suit(
  input_volume = cerebellar_mni,
  deformation_field = xfm_file,
  output_file = cerebellar_suit,
  interpolation = "nearest"
)

suit_vol <- RNifti::readNifti(cerebellar_suit, internal = FALSE)
suit_arr <- as.array(suit_vol)
storage.mode(suit_arr) <- "integer"
suit_int <- RNifti::asNifti(suit_arr, reference = suit_vol)
RNifti::writeNifti(suit_int, cerebellar_suit)

cer_lut <- lut_out[
  lut_out$type == "cerebellar",
  c("idx", "label", "R", "G", "B", "A")
]

.shen268_cerebellar <- create_cerebellar_from_volume(
  volume = cerebellar_suit,
  input_lut = cer_lut,
  atlas_name = "shen268_cerebellar",
  output_dir = "data-raw/shen268/shen268",
  smooth_refinements = 2L,
  skip_existing = FALSE,
  cleanup = FALSE,
  verbose = TRUE
)

.shen268_cortical <- atlases$cortical

print(.shen268_cortical)
print(.shen268_subcortical)
print(.shen268_cerebellar)

usethis::use_data(
  .shen268_cortical,
  .shen268_subcortical,
  .shen268_cerebellar,
  overwrite = TRUE,
  compress = "xz",
  internal = TRUE
)
