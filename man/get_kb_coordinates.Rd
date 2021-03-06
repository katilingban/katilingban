% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_kb_points.R
\name{get_kb_coordinates}
\alias{get_kb_coordinates}
\title{Get coordinates of areas that point to areas of experience of Katilingban
consultants}
\usage{
get_kb_coordinates(.data)
}
\arguments{
\item{.data}{Object containing information on Katilingban consultants'
experience. This is held in a Google Sheets document and can be retrieved
using \code{read_kb_experience} function.}
}
\value{
A tibble containing the same information as the original input data
but with longitude and latitude coordinates included.
}
\description{
Get coordinates of areas that point to areas of experience of Katilingban
consultants
}
\examples{
\dontrun{
  kb <- read_kb_experience()
  get_kb_coordinates(.data = kb)
}

}
