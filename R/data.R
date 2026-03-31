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
shen268_cortical <- function() .shen268_cortical
#' Shen 268 Subcortical Parcellation
#'
#' Subcortical regions from the Shen 268-node functional parcellation
#' (Shen et al., 2013). Contains 2D polygon geometry and 3D meshes.
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
shen268_cerebellar <- function() .shen268_cerebellar
