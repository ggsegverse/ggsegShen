# ggsegShen 1.0.4

- Rebuilt all three atlases against the fixed ggseg.extra pipeline: cortical
  holes are filled, the medial wall is kept as grey context, snapshot masks are
  read with an explicit y direction, and subcortical slabs are framed on the
  label bounding box.
- `data-raw/make_atlas.R` now calls `atlas_simplify()` and `atlas_smooth()`
  separately (`atlas_smooth(keep = )` was removed), passes
  `registration = "header"` instead of the deprecated `regheader`, and drops the
  retired `tolerance`/`smoothness` arguments.
- The cortical atlas drops from 217 to 203 regions. `Region_257` and
  `Region_260` are lost from both hemispheres and `Region_122` from its only
  hemisphere (2-7 surface vertices each); seven minority-hemisphere spill
  fragments are gone, each with a surviving twin in its proper hemisphere; and
  `lh_unknown`/`rh_unknown` are now grey context rather than regions. The
  subcortical (15) and cerebellar (39) region counts are unchanged.

# ggsegShen 1.0.3

- The subcortical atlas now uses bounding-box-framed slabs (3 coronal + 4 axial)
  and structure dilation, so the 15 parcels read as filled shapes inside the
  grey brain across 7 views instead of a few sparse slivers over 3 views.
- Both the subcortical and cerebellar atlases now use evenly-spaced, distinct
  hues, so individual parcels are distinguishable (the raw Shen LUT was a
  near-flat green/magenta per-hemisphere gradient). The subcortical rebuild
  requires FreeSurfer 7.4.1.
- Replaced the brittle subcortical/cerebellar `vdiffr` snapshots with structural
  assertions.

# ggsegShen 1.0.2

- Atlas 2D geometry migrated to the sf-optional `brain_polygons` format
  (`ggseg.formats` 0.0.3). The atlases now render without `sf` and its
  GDAL/GEOS/PROJ system libraries, enabling wasm and air-gapped installs.
  Plots are unchanged.

# ggsegShen 1.0.0

- Initial release with `shen268_cortical` and `shen268_subcortical`
  atlases as unified `ggseg_atlas` objects for the ggseg 2.0 ecosystem.
