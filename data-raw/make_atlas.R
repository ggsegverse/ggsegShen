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

.shen268_cortical <- atlases$cortical
.shen268_subcortical <- atlases$subcortical
.shen268_cerebellar <- atlases$cerebellar

print(.shen268_cortical)
plot(.shen268_cortical)
print(.shen268_subcortical)
plot(.shen268_subcortical)

if (!is.null(.shen268_cerebellar)) {
  print(.shen268_cerebellar)
  plot(.shen268_cerebellar)
  usethis::use_data(
    .shen268_cortical, .shen268_subcortical,
    .shen268_cerebellar,
    overwrite = TRUE, compress = "xz", internal = TRUE
  )
} else {
  usethis::use_data(
    .shen268_cortical, .shen268_subcortical,
    overwrite = TRUE, compress = "xz", internal = TRUE
  )
}
