
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mapselector

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of mapselector is to …

## Installation

Install `mapselector` directly from github:

``` r
remotes::install_github("mapselector")
```

## Workflow for creating a dashboard

Create a new folder for your project. NOTE as it seems we’re all going
the golem route, its important to use a valid R package name for the
project. This means no dashs `-` or underlines `_`. so `montableau` and
NOT `mon_tableau`

    mkdir montableau

start a git repository

    git init

add [`tableauproto`]() as a remote

    git remote add proto link

pull in the template from `tableauproto`

    git pull proto

this template is NOT an Rstudio project, but you should make it one now.
Go to `New Project > Existing Directory` and choose `montableau/`

Create a github repo called `montableau`, and copy URL

In the file `dev/01_start.R`, edit any of the code you want: your name,
the package name, and add the github URL. Consider using `here::here()`
for
