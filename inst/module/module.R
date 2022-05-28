#' #MODULE# UI
#' 
#' @param id Unique id for module instance.
#' 
#' @importFrom htmltools htmlTemplate
#' 
#' @keywords internal
#MODULE#UI <- \(id){
	ns <- NS(id)

	htmlTemplate(
		pkg_file("app/#MODULE#.html")
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
