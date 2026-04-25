# Shen 268 Cerebellar Parcellation

Cerebellar regions from the Shen 268-node functional parcellation (Shen
et al., 2013). Contains 2D polygon geometry and 3D meshes.

## Usage

``` r
shen268_cerebellar()
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
[`shen268_cortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_cortical.md),
[`shen268_subcortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_subcortical.md)

## Examples

``` r
shen268_cerebellar()
#> 
#> ── shen268_cerebellar ggseg atlas ──────────────────────────────────────────────
#> Type: cerebellar
#> Regions: 39
#> Hemispheres: right, left
#> Views: flatmap
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 39 × 3
#>    hemi  region     label           
#>    <chr> <chr>      <chr>           
#>  1 right Region_100 right_Region_100
#>  2 right Region_102 right_Region_102
#>  3 right Region_103 right_Region_103
#>  4 right Region_104 right_Region_104
#>  5 right Region_105 right_Region_105
#>  6 right Region_107 right_Region_107
#>  7 right Region_108 right_Region_108
#>  8 right Region_109 right_Region_109
#>  9 right Region_111 right_Region_111
#> 10 right Region_112 right_Region_112
#> 11 right Region_113 right_Region_113
#> 12 right Region_114 right_Region_114
#> 13 right Region_115 right_Region_115
#> 14 right Region_116 right_Region_116
#> 15 right Region_117 right_Region_117
#> 16 right Region_118 right_Region_118
#> 17 right Region_119 right_Region_119
#> 18 right Region_129 right_Region_129
#> 19 right Region_133 right_Region_133
#> 20 left  Region_236 left_Region_236 
#> 21 left  Region_237 left_Region_237 
#> 22 left  Region_238 left_Region_238 
#> 23 left  Region_239 left_Region_239 
#> 24 left  Region_240 left_Region_240 
#> 25 left  Region_241 left_Region_241 
#> 26 left  Region_242 left_Region_242 
#> 27 left  Region_243 left_Region_243 
#> 28 left  Region_245 left_Region_245 
#> 29 left  Region_246 left_Region_246 
#> 30 left  Region_247 left_Region_247 
#> 31 left  Region_249 left_Region_249 
#> 32 left  Region_250 left_Region_250 
#> 33 left  Region_251 left_Region_251 
#> 34 left  Region_252 left_Region_252 
#> 35 left  Region_253 left_Region_253 
#> 36 left  Region_255 left_Region_255 
#> 37 left  Region_256 left_Region_256 
#> 38 left  Region_266 left_Region_266 
#> 39 left  Region_267 left_Region_267 
```
