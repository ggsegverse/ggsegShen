library(ggseg.extra)
library(ggseg.formats)


volume_file <- here::here("data-raw", "shen_2mm_268_parcellation.nii.gz")

if (!file.exists(volume_file)) {
  cli::cli_abort("Volume not found: {.path {volume_file}}")
}

vol <- RNifti::readNifti(volume_file)
label_ids <- sort(unique(as.integer(vol[vol > 0])))

lut_file <- here::here("data-raw", "Shen268_LUT.txt")
writeLines(
  paste(label_ids, sprintf("Region_%03d", label_ids), 0, 0, 0, 0),
  lut_file
)

cli::cli_h1("Creating Shen 268-parcel atlas")
cli::cli_alert_info("Found {length(label_ids)} non-zero labels in volume")

atlases <- create_wholebrain_from_volume(
  input_volume = volume_file,
  input_lut = lut_file,
  atlas_name = "shen268",
  output_dir = "data-raw/shen268",
  regheader = TRUE,
  tolerance = 1,
  smoothness = 2,
  decimate = 0.5,
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE
)

shen268_cortical <- atlases$cortical
shen268_subcortical <- atlases$subcortical

cli::cli_alert_success("Cortical: {nrow(shen268_cortical$core)} regions")
cli::cli_alert_success("Subcortical: {nrow(shen268_subcortical$core)} regions")

brain_pals <- stats::setNames(
  list(shen268_cortical$palette, shen268_subcortical$palette),
  c(shen268_cortical$atlas, shen268_subcortical$atlas)
)
save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")

usethis::use_data(shen268_cortical, shen268_subcortical,
  overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/")
