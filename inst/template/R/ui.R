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
  page(
    div(
      class = "bg-amber-500 text-white h-56 text-center m-2 rounded p-6",
      h1(
        "Hello, Tailwind!",
        class = "text-3xl"
      )
    )
  )
}
