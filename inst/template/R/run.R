#' Run
#' 
#' Run the application.
#' 
#' @import shiny
#' 
#' @export 
run <- \() {
  shiny::shinyApp(ui, server)
}