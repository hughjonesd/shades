% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance.R
\name{distance}
\alias{distance}
\title{Colour distance}
\usage{
distance(shades, reference)
}
\arguments{
\item{shades}{One or more colours, in any suitable form (see
\code{\link{shade}}).}

\item{reference}{A single reference colour.}
}
\value{
A numeric vector of distances.
}
\description{
This function calculates a distance measure that aims to quantify the
perceptual difference between a vector of colours and a reference colour.
The measure in question is the CIE Delta E (2000), which is calculated based
on colour coordinates in Lab space.
}
\examples{
distance(c("red","green","blue"), "red")
}
\references{
\url{http://www.brucelindbloom.com/index.html?Eqn_DeltaE_CIE2000.html}
}
\author{
Jon Clayden <code@clayden.org>
}
