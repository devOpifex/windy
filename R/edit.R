#' Package JSON Edit
#' 
#' @keywords internal
edit_package_json <- \() {
  if(!file.exists("package.json"))
    stop("`package.json` does not exist", call. = FALSE)

  json <- jsonlite::read_json("package.json")

  json$scripts <- list(
    watch.tailwind = "npx tailwindcss -i ./inst/app/input.css -o ./inst/app/assets/styles.css --watch",
    build.tailwind = "npx tailwindcss -i ./inst/app/input.css -o ./inst/app/assets/styles.css"
  )

  jsonlite::write_json(
    json,
    "package.json",
    pretty = TRUE,
    auto_unbox = TRUE
  )
}
