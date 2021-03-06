% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pixel_dim.R
\name{pixel_dim}
\alias{pixel_dim}
\title{Estimating metric dimensions of pixels in raster object}
\usage{
pixel_dim(raster, projected = FALSE, ...)
}
\arguments{
\item{raster}{An object of class \verb{Raster*}.}

\item{projected}{Logical value indicating whether the coordinates of raster
input are projected or not.}

\item{...}{Further arguments passed among methods (Not yet used).}
}
\value{
A named vector with the estimated height (latitude) and width
(longitude) of pixels either in meters for non-projected rasters or in the
own spacial units for projected ones.
}
\description{
Pixel dimension in raster objects (class \verb{Raster*}) in projected space.

For non projected rasters, the bounding boxes will be reprojected to UTM
coordinates for the calculation of height (latitude) and width (longitude).
For projected rasters, the calculation will be directly done in the units of
the respective spacial reference system.
}
\examples{
require(raster)

r <- raster(system.file("external/test.grd", package="raster"))
pixel_dim(r)

## More appropriate for projected coordinates
pixel_dim(r, projected=TRUE)

}
\author{
Lukas Trübenbach and Miguel Alvarez (\email{kamapu78@gmail.com}).
}
