################################################################################
#
#'
#' Get coordinates of areas that point to areas of experience of Katilingban
#' consultants
#'
#' @param .data Object containing information on Katilingban consultants'
#'   experience. This is held in a Google Sheets document and can be retrieved
#'   using \code{read_kb_experience} function.
#'
#' @return A tibble containing the same information as the original input data
#'   but with longitude and latitude coordinates included.
#'
#' @examples
#' \dontrun{
#'   kb <- read_kb_experience()
#'   get_kb_coordinates(.data = kb)
#' }
#'
#' @export
#'
#
################################################################################

get_kb_coordinates <- function(.data = read_kb_experience()) {
  ## Create vector of area names
  location <- with(.data,
                   ifelse(is.na(subnational_location), country,
                          paste(subnational_location, ", ", country, sep = "")))

  ## Get geocoordinates of each consultant experience
  y <- ggmap::geocode(location = location)

  ## Add geocoordinates to .data
  kb_experience <- data.frame(.data, location, y)

  ## Conver to tibble
  kb_experience <- tibble::tibble(kb_experience)

  ## Return kb_experience
  return(kb_experience)
}
