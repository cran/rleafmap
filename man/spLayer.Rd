% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/splayer.R
\name{spLayer}
\alias{spLayer}
\title{Define a Data Layer}
\usage{
spLayer(x, ...)
}
\arguments{
\item{x}{a spatial object as defined in the package \pkg{sp}.}

\item{...}{additional arguments to pass to the function.}
}
\description{
Define a new data layer from an object sp.
}
\examples{
\dontrun{
 #POINTS
 data(velov)
 vv <- spLayer(velov, stroke=F, popup=velov$NAME)

 #POLYGONS
 data(campsites)
 gcol <- rev(heat.colors(5))
 gcut <- cut(mapdep$N.CAMPSITES, breaks=c(-1, 20, 40, 60, 80, 1000))
 cs <- spLayer(campsites, fill.col=as.numeric(gcut))
 bm1 <- basemap("mapquest.map")
 
 writeMap(bm1, cs, vv)
}
}
