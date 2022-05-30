#' Package File
#' 
#' Get path to a file.
#' 
#' @param ... Passed to [system.file()].
#' 
#' @keywords internal
pkg_file <- \(...){
  system.file(..., package = "windy.app")
}

#' Create Select Choices
#' 
#' Create choices for a select input.
#' 
#' @param choices Choices, named vector or list.
#' 
#' @keywords internal
select_choices <- \(
  choices
){
  if(missing(choices))
    stop("Missing `choices`", call. = FALSE)

  labels <- names(choices)
  values <- unname(choices)
  labels[labels == ""] <- values[labels == ""]

  names(values) <- labels

  as.list(values)
}
