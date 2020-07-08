################################################################################
#
#' Perform manual authentication with specific Google application using
#' self-generated specified authentication credentials
#'
#' @param appname Application name
#' @param key Google API key
#' @param secret Client secret
#'
#' @return A Google-authenticated session
#'
#' @examples
#' \dontrun{
#'   auth_google(appname = "googledrive",
#'               key = "ADD/KEY/HERE",
#'               secret = "ADD/SECRET/HERE")
#' }
#'
#' @export
#'
#
################################################################################

auth_google <- function(appname, key, secret) {
  google_app <- httr::oauth_app(appname = appname, key = key, secret = secret)
  googledrive::drive_auth_configure(app = google_app)
}
