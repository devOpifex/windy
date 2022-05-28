#' User Interface
#' 
#' The user interface.
#' 
#' @param req Request, see `httpuv`.
#' 
#' @import shiny
#' @importFrom htmltools htmlTemplate
#' 
#' @keywords internal
ui <- \(req) {
  htmlTemplate(
    pkg_file("app/index.html")
  )
}
