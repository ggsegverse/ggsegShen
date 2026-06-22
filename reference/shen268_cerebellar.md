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
#>     hemi     region            label
#> 1  right Region_100 right_Region_100
#> 2  right Region_102 right_Region_102
#> 3  right Region_103 right_Region_103
#> 4  right Region_104 right_Region_104
#> 5  right Region_105 right_Region_105
#> 6  right Region_107 right_Region_107
#> 7  right Region_108 right_Region_108
#> 8  right Region_109 right_Region_109
#> 9  right Region_111 right_Region_111
#> 10 right Region_112 right_Region_112
#> ... with 29 more rows
```
