.onLoad <- \(...){
  if(!file.exists(pkg_file("app/assets")))
    return()

  shiny::addResourcePath(
    "assets",
    pkg_file("app/assets")
  )
}
