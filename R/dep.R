#' JavaScript Dependencies
#' 
#' Retrieve JavaScript dependencies.
#' 
#' @param name Name of file.
#' 
#' @importFrom htmltools htmlDependency
#' 
#' @keywords internal
get_js_dependency <- \(name) {
  htmlDependency(
    name = sprintf("windy-%s", name),
    version = utils::packageVersion("windy"),
    src = "assets",
    package = "windy",
    script = sprintf("%s.js", name),
    all_files = FALSE
  )
}
