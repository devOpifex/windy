#' Button
#' 
#' A bare button.
#' 
#' @param id ID of button and `input`.
#' @param ... Content of button.
#' @param class Any additional classes.
#' @param value Initial value of button, must be an integer.
#' 
#' @importFrom htmltools tagList tags
#' 
#' @export 
button <- \(
  id,
  ...,
  class = ...class(),
  .tag = htmltools::tags$button,
  value = 0L
) {
  cat("This likely will not work\n")

  if(missing(id))
    stop("Missing `id`", call. = FALSE)

  if(!is.numeric(value))
    stop("`value` must be a numeric", call. = FALSE)

  tagList(
    get_js_dependency("button"),
    tags$button(
      id = id,
      class = ...class("windy-button", class),
      value = value,
      ...
    )
  )
}
