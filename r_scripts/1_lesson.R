setwd('~/gitrep/qgis_udemy/ANALYSIS_')

library(raster)
require(raster)

band1 = raster("band1.tif")
band1

plot(band1)

band2 = raster("band2.img")
band2

b3 = raster("CA2015_new.rst")
writeRaster(b3, "_to_tif.tif")

###########################################
setwd('~/gitrep/qgis_udemy/ANALYSIS_/bands')

rlist = list.files(pattern = "tif$", full.names = TRUE)

rasters = stack(rlist)
names(rasters)
