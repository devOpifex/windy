#' Server
#' 
#' Server logic.
#' 
#' @param input,output Environments.
#' @param session Shiny session.
#' 
#' @import shiny
#' @keywords internal
server <- \(input, output, session){
  observeEvent(input$text, {
    print(input$text)
  })
}
