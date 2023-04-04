#' Add module
#' 
#' Add boilerplate for a module.
#' 
#' @param name Name of the module.
#' This is used to dynamically create the names of the
#' functions and file.
#' 
#' @examples 
#' \dontrun{add_module("module_name")}
#' 
#' @importFrom cli cli_alert_success
#' 
#' @return Called for side-effects, invisibly returns
#' `NULL`.
#' 
#' @export 
add_module <- function(name){
	if(missing(name))
		stop("Missing `name`", call. = FALSE)

	if(grepl(" ", name))
		stop("Module name may not include spaces", call. = FALSE)
	
  name <- gsub("\\.R$", "", name)

	path <- sprintf("R/module_%s.R", name)

	if(file.exists(path))
		stop(
			sprintf("File `%s` already exists.", path),
			call. = FALSE
		)

	cli::cli_alert_success("Creating {.file {path}}")
  mod <- readLines(pkg_file("module/module.R"))
  mod <- gsub("#MODULE#", name, mod)
  writeLines(mod, sprintf("R/%s.R", name))

	invisible()
}
