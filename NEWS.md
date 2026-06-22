# ggsegShen 1.0.2

- Atlas 2D geometry migrated to the sf-optional `brain_polygons` format
  (`ggseg.formats` 0.0.3). The atlases now render without `sf` and its
  GDAL/GEOS/PROJ system libraries, enabling wasm and air-gapped installs.
  Plots are unchanged.

# ggsegShen 1.0.0

* Initial release with `shen268_cortical` and `shen268_subcortical`
  atlases as unified `ggseg_atlas` objects for the ggseg 2.0 ecosystem.
