<!-- badges: start -->
<!-- badges: end -->

<div align="center">

# windy

:warning: Work in progress

Tailwindcss for shiny.

</div>

## Installation

You can install the development version of windy from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("devOpifex/windy")
```

## Usage

1. Create a package

```r
usethis::create_package("mypkg")
```

2. Scaffold

```r
windy::scaffold()
```

3. Run

```r
devtools::load_all()
run()
```

----

- Change your CSS then run `windy_build()` to rebuild the output CSS,
or run `windy_watch()` to rebuild at every change.
- Add a module with `add_module()`.
- Note this uses [htmlTemplate](https://shiny.rstudio.com/articles/templates.html)
- Everything in the `inst/app/assets` is served.

---

:rotating_light: You must use `htmltools::htmlTemplate` because
tailwind scans `.html` and `.css` file to produce an optimised
CSS output file. Anything dynamically generated (`{{ something }}`)
will not be scanned by tailwind and the classes required by
`something` will be missing from the output.
