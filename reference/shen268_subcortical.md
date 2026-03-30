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

## References

Shen X et al. (2013). Groupwise whole-brain parcellation from
resting-state fMRI data for network node identification.
[doi:10.1016/j.neuroimage.2013.05.081](https://doi.org/10.1016/j.neuroimage.2013.05.081)

## See also

Other ggseg_atlases:
[`shen268_cortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_cortical.md)

## Examples

``` r
shen268_subcortical()
#> 
#> ── shen268_subcortical ggseg atlas ─────────────────────────────────────────────
#> Type: subcortical
#> Regions: 16
#> Hemispheres: NA
#> Views: axial_1, axial_2, axial_3, coronal_1, coronal_2, sagittal
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 16 × 3
#>    hemi  region     label     
#>    <chr> <chr>      <chr>     
#>  1 NA    region 058 Region_058
#>  2 NA    region 087 Region_087
#>  3 NA    region 088 Region_088
#>  4 NA    region 119 Region_119
#>  5 NA    region 121 Region_121
#>  6 NA    region 122 Region_122
#>  7 NA    region 123 Region_123
#>  8 NA    region 124 Region_124
#>  9 NA    region 127 Region_127
#> 10 NA    region 132 Region_132
#> 11 NA    region 135 Region_135
#> 12 NA    region 136 Region_136
#> 13 NA    region 229 Region_229
#> 14 NA    region 244 Region_244
#> 15 NA    region 245 Region_245
#> 16 NA    region 254 Region_254
```
