################################################################################
#
#'
#' Create Leaflet marker popup content
#'
#' Given point location data, this function facilitates the creation of
#' corresponding vector of character values to show in the popup for Leaflet
#' markers.
#'
#' @param .data A data.frame containing information corresponding to each mapped
#'   point location.
#'
#' @return A vector of character values with length equal to the number of
#'   mapped point locations
#'
#' @examples
#' \dontrun{
#'   df <- read_kb_experience()
#'   df <- get_kb_coordinates(.data = df)
#'   create_popup_content(.data = df)
#' }
#'
#' @export
#'
#
################################################################################

create_popup_content <- function(.data) {
  ## Create text chunks for tooltip
  programme <- paste("<strong>Programme:</strong> ", .data[["type1"]], sep = "")
  support   <- paste("<strong>Support:</strong> ", .data[["type2"]], sep = "")
  methods   <- paste("<strong>Methods:</strong> ", .data[["type3"]], sep = "")
  location  <- paste("<strong>Location:</strong> ", .data[["location"]], sep = "")

  ## Create tooltip
  tooltip <- vector(mode = "character", length = nrow(.data))
  tooltip[seq_len(nrow(.data))] <- paste(programme, support, methods, location, sep = "<br/>")

  ## Add tooltip to .data
  kb_experience <- data.frame(kb_experience, tooltip)

  ## Convert to tibble
  kb_experience <- tibble::tibble(kb_experience)

  ## Return tooltip vector
  return(kb_experience)
}
