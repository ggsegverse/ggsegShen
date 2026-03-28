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
[`shen268_subcortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_subcortical.md)

## Examples

``` r
shen268_cortical()
#> Error in shen268_cortical(): object '.shen268_cortical' not found
```
