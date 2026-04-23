

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegShen

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegShen/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegShen/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggseg.r-universe.dev/badges/ggsegShen.png)](https://ggseg.r-universe.dev/ggsegShen)
<!-- badges: end -->

Shen 268 functional parcellation atlas for the ggseg ecosystem.

Shen X, Tokoglu F, Papademetris X, & Constable RT (2013). Groupwise
whole-brain parcellation from resting-state fMRI data for network node
identification. *NeuroImage*, 82, 403-415.

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegShen")
```

You can install this package from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ggsegverse/ggsegShen")
```

## Cortical atlas

``` r
library(ggseg)
library(ggsegShen)

plot(shen268_cortical())
```

<img src="man/figures/README-shen-cortical-1.png"
style="width:100.0%" />

## Subcortical atlas

``` r
plot(shen268_subcortical())
```

<img src="man/figures/README-shen-subcortical-1.png"
style="width:100.0%" />

## Data source

Shen X, Tokoglu F, Papademetris X, & Constable RT (2013). Groupwise
whole-brain parcellation from resting-state fMRI data for network node
identification. *NeuroImage*, 82, 403-415.
