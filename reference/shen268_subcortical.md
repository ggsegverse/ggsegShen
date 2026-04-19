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
[`shen268_cerebellar()`](https://ggseg.github.io/ggsegShen/reference/shen268_cerebellar.md),
[`shen268_cortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_cortical.md)

## Examples

``` r
shen268_subcortical()
#> 
#> ── shen268_subcortical ggseg atlas ─────────────────────────────────────────────
#> Type: subcortical
#> Regions: 35
#> Hemispheres: NA
#> Views: axial_1, axial_2, axial_3, coronal_1, coronal_2, sagittal
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 35 × 3
#>    hemi  region     label     
#>    <chr> <chr>      <chr>     
#>  1 NA    region 058 Region_058
#>  2 NA    region 087 Region_087
#>  3 NA    region 088 Region_088
#>  4 NA    region 101 Region_101
#>  5 NA    region 102 Region_102
#>  6 NA    region 103 Region_103
#>  7 NA    region 104 Region_104
#>  8 NA    region 106 Region_106
#>  9 NA    region 107 Region_107
#> 10 NA    region 108 Region_108
#> 11 NA    region 109 Region_109
#> 12 NA    region 110 Region_110
#> 13 NA    region 113 Region_113
#> 14 NA    region 115 Region_115
#> 15 NA    region 117 Region_117
#> 16 NA    region 118 Region_118
#> 17 NA    region 119 Region_119
#> 18 NA    region 120 Region_120
#> 19 NA    region 121 Region_121
#> 20 NA    region 122 Region_122
#> 21 NA    region 123 Region_123
#> 22 NA    region 124 Region_124
#> 23 NA    region 127 Region_127
#> 24 NA    region 129 Region_129
#> 25 NA    region 130 Region_130
#> 26 NA    region 131 Region_131
#> 27 NA    region 132 Region_132
#> 28 NA    region 133 Region_133
#> 29 NA    region 135 Region_135
#> 30 NA    region 136 Region_136
#> 31 NA    region 217 Region_217
#> 32 NA    region 229 Region_229
#> 33 NA    region 236 Region_236
#> 34 NA    region 237 Region_237
#> 35 NA    region 238 Region_238
```
