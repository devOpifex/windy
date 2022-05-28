#' NPM
#' 
#' NPM commands to build tailwind.
#' 
#' @name npm
#' @export 
windy_build <- \(){
  packer::npm_run("run build.tailwind")
}

#' @rdname npm
#' @export 
windy_watch <- \(){
  packer::npm_run("run watch.tailwind")
}