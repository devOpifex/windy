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

## Note

Tailwind is "a utility-first CSS framework packed with classes [...]",
all styling is done via classes.

This means there are no out-of-the-box compoenents that we can integrate here,
e.g.: no "navbar".
These will have to be built by yourself (they are much easier to build than you
may think).
The package may eventually provide helpers to design those.

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

# Example

You will find a very basic example at [devOpifex/windy.example](https://github.com/devOpifex/windy.example).
