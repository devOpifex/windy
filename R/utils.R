#' Package File
#' 
#' Get path to package file.
#' 
#' @keywords internal
pkg_file <- \(...){
  system.file(..., package = "windy")
}

#' Package Name
#' 
#' Get package name.
#' 
#' @keywords internal
get_pkg_name <- \() {
  path <- getwd()
  basename(path)
}
