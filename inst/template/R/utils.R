#' Package File
#' 
#' Get path to a file.
#' 
#' @param ... Passed to [system.file()].
#' 
#' @keywords internal
pkg_file <- \(...){
  system.file(..., package = "#PKGNAME#")
}

#' Create Select Choices
#' 
#' Create choices for a select input.
#' 
#' @param choices Choices, named vector or list.
#' 
#' @importFrom htmltools tags
#' 
#' @keywords internal
select_choices <- \(
  choices
){
  if(missing(choices))
    stop("Missing `choices`", call. = FALSE)

  labels <- names(choices)
  if(is.null(labels))
    labels <- rep("", length(choices))

  values <- unname(choices)
  labels[labels == ""] <- values[labels == ""]

  1:length(values) |> 
    lapply(\(i) {
      tags$option(
        value = values[i],
        labels[i]
      )
    })
}

#' CSS Dependency
#' @keywords internal
dep <- function() {
  htmltools::htmlDependency(
    "tailwind",
    utils::packageVersion("#PKGNAME#"),
    package = "#PKGNAME#",
    src = "app/assets",
    stylesheet = c(src = "styles.css")
  )
}

#' Application Page
#' @param ... Application content
#' @keywords internal
page <- function(...) {
  tags$html(
    dep(),
    tags$body(
      ...
    )
  )
}

