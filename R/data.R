#' Shen 268 Cortical Parcellation
#'
#' Cortical regions from the Shen 268-node functional parcellation
#' (Shen et al., 2013). Contains 2D polygon geometry for
#' [ggseg::geom_brain()] and 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' @family ggseg_atlases
#' @family cortical_atlases
#'
#' @references Shen X et al. (2013). Groupwise whole-brain parcellation
#'   from resting-state fMRI data for network node identification.
#'   \doi{10.1016/j.neuroimage.2013.05.081}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' shen268_cortical()
shen268_cortical <- function() .shen268_cortical # nolint: object_usage_linter.
#' Shen 268 Subcortical Parcellation
#'
#' Subcortical regions from the Shen 268-node functional parcellation
#' (Shen et al., 2013). Contains 2D polygon geometry and 3D meshes.
#'
#' @section Why the subcortical regions look unusual:
#' Shen 268 is a *functional* parcellation derived from resting-state fMRI
#' connectivity, not an anatomical one. Parcel boundaries follow connectivity
#' gradients rather than named anatomical structures, so the subcortical
#' parcels do not correspond one-to-one with structures like thalamus,
#' caudate, or putamen, and the left/right counts are not symmetric.
#' Of the 268 parcels, 15 fall in subcortical territory by a centroid
#' criterion (`|x| < 25 mm`, `-20 < z < 20 mm`, `-30 < y < 15 mm` in MNI).
#'
#' The greyscale anatomical context behind the regions comes from
#' FreeSurfer's `cvs_avg35_inMNI152` aparc+aseg, used purely as a
#' visual backdrop. The Shen volume is co-registered to that template
#' (12-DOF affine) and resampled to 1 mm with per-label trilinear
#' interpolation + argmax to keep boundaries smooth.
#'
#' @family ggseg_atlases
#' @family subcortical_atlases
#'
#' @references Shen X et al. (2013). Groupwise whole-brain parcellation
#'   from resting-state fMRI data for network node identification.
#'   \doi{10.1016/j.neuroimage.2013.05.081}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' shen268_subcortical()
# nolint next: object_usage_linter.
shen268_subcortical <- function() .shen268_subcortical
#' Shen 268 Cerebellar Parcellation
#'
#' Cerebellar regions from the Shen 268-node functional parcellation
#' (Shen et al., 2013). Contains 2D polygon geometry and 3D meshes.
#'
#' @family ggseg_atlases
#' @family cerebellar_atlases
#'
#' @references Shen X et al. (2013). Groupwise whole-brain parcellation
#'   from resting-state fMRI data for network node identification.
#'   \doi{10.1016/j.neuroimage.2013.05.081}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' shen268_cerebellar()
# nolint next: object_usage_linter.
shen268_cerebellar <- function() .shen268_cerebellar
