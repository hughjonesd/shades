% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shade.R
\name{shade}
\alias{shade}
\alias{shades}
\alias{shade.shade}
\alias{shade.color}
\alias{shade.matrix}
\alias{shade.character}
\alias{shade.default}
\alias{print.shade}
\alias{[.shade}
\alias{[<-.shade}
\alias{c.shade}
\alias{rep.shade}
\alias{rev.shade}
\alias{==.shade}
\alias{!=.shade}
\alias{all.equal.shade}
\title{The shade class}
\usage{
shade(x, ...)

\method{shade}{shade}(x, ...)

\method{shade}{color}(x, ...)

\method{shade}{matrix}(x, space = "sRGB", alpha = NULL, ...)

\method{shade}{character}(x, ...)

\method{shade}{default}(x, ...)

\method{print}{shade}(x, ...)

\method{[}{shade}(x, i)

\method{[}{shade}(x, i) <- value

\method{c}{shade}(...)

\method{rep}{shade}(x, ...)

\method{rev}{shade}(x)

\method{==}{shade}(x, y)

\method{!=}{shade}(x, y)

\method{all}{equal.shade}(target, current, hexonly = FALSE, ...)
}
\arguments{
\item{x, y}{R objects, or \code{"shade"} objects for methods.}

\item{...}{Additional parameters to methods. For \code{c}, any number of
colours in any acceptable form.}

\item{space}{For a matrix, the space in which coordinates are being
provided.}

\item{alpha}{For a matrix, an associated vector of opacity values between 0
and 1, if required.}

\item{i}{An index vector.}

\item{value}{A vector of replacement colours.}

\item{target, current}{Shade vectors to compare.}

\item{hexonly}{If \code{TRUE}, compare only on the basis of the hex strings.
Otherwise test for equal coordinates.}
}
\value{
A character vector of class \code{"shade"}, with additional
  attributes as follows.
    \item{space}{A string naming a color space.}
    \item{coords}{A matrix giving colour coordinates in the relevant space,
      one colour per row.}
}
\description{
Objects of class \code{"shade"} are simply standard R character vectors
representing one or more 8-bit (s)RGB colours in CSS-like hex format, but
with extra attributes giving the current colour space and coordinates.
}
\details{
Comparison between \code{"shade"} objects \code{x} and \code{y} is achieved
by converting \code{y} (the second argument) into the colour space of
\code{x} and then comparing coordinates, after any clipping.
}
\note{
When concatenating, shades that are all from the same space will
  remain in that space, but shades from different spaces will be warped to
  ``XYZ'' space.
}
\examples{
s <- shade(c("red", "green", "blue"))
s[1]
s[1] <- "pink"
}
\author{
Jon Clayden <code@clayden.org>
}
