<!-- badges: start -->
<!-- badges: end -->

<div align="center">

# windy

:warning: Work in progress

An attempt to

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
