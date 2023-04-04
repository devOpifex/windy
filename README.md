<!-- badges: start -->
<!-- badges: end -->

<div align="center">

# windy

[Tailwindcss](https://tailwindcss.com/) for shiny.

<img src="inst/logo.png" />

</div>

Currently it sets up a basic scaffold to use tailwind
within an R package for a shiny application.
All of the heavy lifting is done by tailwind itself.

:heavy_check_mark: now works with R-built UI.

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

Change your CSS then run `windy_build()` to rebuild the output CSS,
or run `windy_watch()` to rebuild at every change.
