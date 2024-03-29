% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chunkerize.R
\name{chunkerize}
\alias{chunkerize}
\title{Multiple code chunks}
\usage{
chunkerize(
  FUN,
  arg.names,
  arg.values,
  type = "block",
  echo = FALSE,
  warning = FALSE,
  error = FALSE,
  message = TRUE,
  fig.width = 4,
  fig.height = 4,
  fig.align = "center",
  options = NULL
)
}
\arguments{
\item{FUN}{the function to use for the chunks.}

\item{arg.names}{a character vector giving the argument names of \code{FUN} to set.}

\item{arg.values}{a vector giving the values or object names to assign to
each argument given with \code{arg.names} (they must match in order).
Object names must be backquoted or quoted.
Lists names marked with a star (e.g. \code{"*L1"} for \code{L1})
indicate their elements will be used sequentially in chunks.}

\item{type}{the type of chunk to produce. Can be "\code{block}", "\code{inline}" or "\code{none}".}

\item{echo}{logical indicating whether to include R source code in the result.}

\item{warning}{logical indicating whether to print warnings in the result.}

\item{error}{logical indicating whether to stop on errors.}

\item{message}{logical indicating whether to print messages in the result.}

\item{fig.width, fig.height}{numeric value setting width and height of the plots in inches.}

\item{fig.align}{character string setting the alignment of the plots. Can be "\code{left}", "\code{right}" and "\code{center}".}

\item{options}{a character string to specify the knitr options.
This will overwrite the options set with the other arguments.}
}
\value{
a character vector of R code chunks which can be evaluated by \pkg{knitr}.
}
\description{
This function creates multiple code chunks from a function and along arguments marked with a star (*).
Each of these special arguments is a list.
The nth code chunk will use the nth element of each marked list (recycled if necessary) as argument.
}
