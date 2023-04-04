#' Copy template
#' 
#' Copy template files.
#' 
#' @keywords internal
copy_template <- \(){
  file.copy(
    list.files(
      pkg_file("template"),
      full.names = TRUE
    ),
    ".",
    recursive = TRUE
  )

  # edit utils
  utils <- readLines("R/utils.R")
  utils <- gsub("#PKGNAME#", get_pkg_name(), utils)
  writeLines(utils, "R/utils.R")
}
