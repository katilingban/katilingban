################################################################################
#
#' Read a specified Katilingban Google Sheets
#'
#' @param ss Something that identifies a Google Sheet: ID, URL, etc.
#' @param sheet Worksheet in Google Sheets to read. Can be specified as the
#'   name of the worksheet or by position using a number.
#' @param ... Additional parameters passed to googlesheets4::read_sheet
#'
#' @return A dribble/tibble of the specified Google Sheet
#'
#' @examples
#' \dontrun{
#'   read_kb_sheets(ss = "1l9ov8NEND-gROprl4gR5K2iiTgcQfrGirItz9uExKl0")
#' }
#'
#' @export
#'
#
################################################################################

read_kb_sheets <- function(ss, sheet = NULL, ...) {
  ## Read specified sheet
  kb_sheets <- googlesheets4::read_sheet(ss, sheet)
  ## Return specified sheet
  return(kb_sheets)
}

