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
    name = sprintf("octoprime-%s", name),
    version = utils::packageVersion("octoprime"),
    src = "assets/js",
    package = "octoprime",
    script = sprintf("%s.js", name),
    all_files = FALSE
  )
}
