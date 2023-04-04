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
      class = "bg-amber-500 h-56 text-center m-2 rounded",
      h1("Hello, Tailwind!", class = "text-white mb-2"),
      tags$label(class = "text-white text-sm", "A text input"),
      br(),
      tags$input(
        id = "text",
        type = "text",
        class = "rounded bg-slate-50 px-4 px-2 text-slate-800" 
      )
    )
  )
}
