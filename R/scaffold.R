#' Scaffold
#' 
#' Scaffold a shiny-tailwind application.
#' 
#' @export 
scaffold <- \() {
  # scaffold
  cli::cli_h2("Scaffolding")
  packer::npm_install("tailwindcss", scope = "dev")
  packer::npx("tailwindcss init --full")
  cli::cli_alert_info("Initialised tailwind")
  edit_package_json()
  cli::cli_alert_info("Updated {.code package.json}")
  copy_template()
  cli::cli_alert_info("Copied template files")

  # ignore files
  cli::cli_h2("Ignoring files")
  usethis::use_build_ignore("node_modules")
  usethis::use_build_ignore("tailwind.config.js")
  usethis::use_build_ignore("package.json")
  usethis::use_build_ignore("package-lock.json")
  usethis::use_build_ignore("app.R")

  # add packages
  cli::cli_h2("Adding dependencies")
  usethis::use_package("shiny")
  usethis::use_package("htmltools")

  # initial build
  cli::cli_h2("Generating initial build")
  windy_build()
  invisible()
}
