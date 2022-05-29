#' Button
#' 
#' A bare button.
#' 
#' @param id ID of button and `input`.
#' @param ... Content of button.
#' @param class Any additional classes.
#' @param .tag Tag to use, e.g.: `tags$a`.
#' 
#' @importFrom htmltools tagList
#' 
#' @export 
button <- \(
  id,
  ...,
  class = ...class(),
  .tag = htmltools::tags$button
) {
  tagList(
    get_js_dependency("button"),
    .tag(
      id = id,
      class = ...class("windy-button", class),
      ...
    )
  )
}
