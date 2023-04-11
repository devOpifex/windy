#' #MODULE# UI
#' 
#' @param id Unique id for module instance.
#' 
#' @keywords internal
#MODULE#UI <- \(id){
	ns <- NS(id)

  tagList(
    h1("#MODULE#")
  )
}

#' #MODULE# Server
#' 
#' @param id Unique id for module instance.
#' 
#' @keywords internal
#MODULE#_server <- \(id){
	moduleServer(
		id,
		\(
			input, 
			output, 
			session
			){
				ns <- session$ns

				# your code here
		}
	)
}

# UI
# #MODULE#UI("id")

# server
# #MODULE#_server("id")
