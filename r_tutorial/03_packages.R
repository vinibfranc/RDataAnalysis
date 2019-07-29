# Types of packages

# 1) Base: installed with R but not load by default
# 2) Contributed: need to be downloaded, installed and loaded separately

# How to get and install them?

# 1) CRAN
# 2) Crantastic!
# 3) GitHub

# Good packages: dplyr, tidyr, stringr, lubridate, httr, ggvis, ggplot2, shiny, rio, rmarkdown and pacman.
install.packages("pacman")

require(pacman)
library(pacman)

pacman::p_load(pacman, dplyr, tidyr, stringr, lubridate, httr, ggvis, ggplot2, shiny, rio, rmarkdown)

p_unload(all)