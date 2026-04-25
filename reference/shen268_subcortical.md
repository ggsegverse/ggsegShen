# Shen 268 Subcortical Parcellation

Subcortical regions from the Shen 268-node functional parcellation (Shen
et al., 2013). Contains 2D polygon geometry and 3D meshes.

## Usage

``` r
shen268_subcortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (subcortical).

## Why the subcortical regions look unusual

Shen 268 is a *functional* parcellation derived from resting-state fMRI
connectivity, not an anatomical one. Parcel boundaries follow
connectivity gradients rather than named anatomical structures, so the
subcortical parcels do not correspond one-to-one with structures like
thalamus, caudate, or putamen, and the left/right counts are not
symmetric. Of the 268 parcels, 15 fall in subcortical territory by a
centroid criterion (`|x| < 25 mm`, `-20 < z < 20 mm`, `-30 < y < 15 mm`
in MNI).

The greyscale anatomical context behind the regions comes from
FreeSurfer's `cvs_avg35_inMNI152` aparc+aseg, used purely as a visual
backdrop. The Shen volume is co-registered to that template (12-DOF
affine) and resampled to 1 mm with per-label trilinear interpolation +
argmax to keep boundaries smooth.

## References

Shen X et al. (2013). Groupwise whole-brain parcellation from
resting-state fMRI data for network node identification.
[doi:10.1016/j.neuroimage.2013.05.081](https://doi.org/10.1016/j.neuroimage.2013.05.081)

## See also

Other ggseg_atlases:
[`shen268_cerebellar()`](https://ggseg.github.io/ggsegShen/reference/shen268_cerebellar.md),
[`shen268_cortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_cortical.md)

## Examples

``` r
shen268_subcortical()
#> 
#> ── shen268_subcortical ggseg atlas ─────────────────────────────────────────────
#> Type: subcortical
#> Regions: 15
#> Hemispheres: right, left
#> Views: axial_1, axial_2, coronal_1
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 15 × 3
#>    hemi  region     label           
#>    <chr> <chr>      <chr>           
#>  1 right region 099 Right_Region_099
#>  2 right region 121 Right_Region_121
#>  3 right region 125 Right_Region_125
#>  4 right region 126 Right_Region_126
#>  5 right region 127 Right_Region_127
#>  6 right region 128 Right_Region_128
#>  7 right region 132 Right_Region_132
#>  8 left  region 231 Left_Region_231 
#>  9 left  region 258 Left_Region_258 
#> 10 left  region 259 Left_Region_259 
#> 11 left  region 261 Left_Region_261 
#> 12 left  region 262 Left_Region_262 
#> 13 left  region 263 Left_Region_263 
#> 14 left  region 264 Left_Region_264 
#> 15 left  region 265 Left_Region_265 
```
