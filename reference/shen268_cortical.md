# Shen 268 Cortical Parcellation

Cortical regions from the Shen 268-node functional parcellation (Shen et
al., 2013). Contains 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://ggsegverse.github.io/ggseg3d/reference/ggseg3d.html).

## Usage

``` r
shen268_cortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Shen X et al. (2013). Groupwise whole-brain parcellation from
resting-state fMRI data for network node identification.
[doi:10.1016/j.neuroimage.2013.05.081](https://doi.org/10.1016/j.neuroimage.2013.05.081)

## See also

Other ggseg_atlases:
[`shen268_cerebellar()`](https://ggseg.github.io/ggsegShen/reference/shen268_cerebellar.md),
[`shen268_subcortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_subcortical.md)

## Examples

``` r
shen268_cortical()
#> 
#> ── shen268_cortical ggseg atlas ────────────────────────────────────────────────
#> Type: cortical
#> Regions: 206
#> Hemispheres: left, right
#> Views: inferior, lateral, superior, medial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#>    hemi     region         label
#> 1  left region 098 lh_Region_098
#> 2  left region 134 lh_Region_134
#> 3  left region 135 lh_Region_135
#> 4  left region 136 lh_Region_136
#> 5  left region 137 lh_Region_137
#> 6  left region 138 lh_Region_138
#> 7  left region 139 lh_Region_139
#> 8  left region 140 lh_Region_140
#> 9  left region 141 lh_Region_141
#> 10 left region 142 lh_Region_142
#> ... with 207 more rows
```
