describe("shen268_cortical", {
  it("is a valid cortical ggseg_atlas", {
    expect_s3_class(shen268_cortical(), "ggseg_atlas")
    expect_s3_class(shen268_cortical(), "cortical_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(shen268_cortical()))
  })

  it("renders with ggseg", {
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = shen268_cortical(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = shen268_cortical()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("shen268-cortical-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = shen268_cortical())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})

describe("shen268_subcortical", {
  it("is a valid subcortical ggseg_atlas", {
    expect_s3_class(shen268_subcortical(), "ggseg_atlas")
    expect_s3_class(shen268_subcortical(), "subcortical_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(shen268_subcortical()))
  })

  it("has brain_polygons geometry and a named palette", {
    expect_true(ggseg.formats::is_atlas_polygon(shen268_subcortical()))
    pal <- ggseg.formats::atlas_palette(shen268_subcortical())
    expect_type(pal, "character")
    expect_named(pal)
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = shen268_subcortical(),
        mapping = ggplot2::aes(fill = label),
        show.legend = FALSE
      ) +
      ggplot2::theme_void()
    expect_s3_class(p, "ggplot")
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = shen268_subcortical())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})

describe("shen268_cerebellar", {
  it("is a valid cerebellar ggseg_atlas", {
    expect_s3_class(shen268_cerebellar(), "ggseg_atlas")
    expect_s3_class(shen268_cerebellar(), "cerebellar_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(shen268_cerebellar()))
  })

  it("has a named palette", {
    pal <- ggseg.formats::atlas_palette(shen268_cerebellar())
    expect_type(pal, "character")
    expect_named(pal)
  })

  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = shen268_cerebellar(),
        mapping = ggplot2::aes(fill = label),
        show.legend = FALSE
      ) +
      ggplot2::theme_void()
    expect_s3_class(p, "ggplot")
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = shen268_cerebellar())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
