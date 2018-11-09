#This script installs and adds the required packages to the project library

#Install a list of required packages.
#Method used: https://stackoverflow.com/questions/4090169/elegant-way-to-check-for-missing-packages-and-install-them
list.of.packages <- c("mongolite", "flexdashboard", "d3heatmap", "ggridges", "jsonlite")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[, "Package"])]
if (length(new.packages)) install.packages(new.packages, quiet = FALSE, repos = "http://cran.us.r-project.org")


#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled above in this file!
library(flexdashboard)
library(mongolite)
library(d3heatmap)
library(knitr)
library(shiny)
library(ggridges)
library(jsonlite)
library(ggplot2)
