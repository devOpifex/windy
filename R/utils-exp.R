#' Class
#' 
#' Build classes from character vectors.
#' 
#' @param ... Elements, character vectors of any length.
#' 
#' @examples
#' ...class("hello", "world")
#' ...class("hello", c(1, 2))
#' 
#' @export 
...class <- \(...){
  list(...) |> 
    unlist() |> 
    paste0(collapse = " ")
}
