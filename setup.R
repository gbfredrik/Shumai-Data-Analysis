#This script installs and adds the required packages to the project library

#Install a list of required packages.
#Method used: https://stackoverflow.com/questions/4090169/elegant-way-to-check-for-missing-packages-and-install-them
list.of.packages <- c("flexdashboard", "knitr", "shiny", "jsonlite", "ggplot2", "curl") # Required.

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[, "Package"])] # Missing packages. 
if (length(new.packages)) install.packages(new.packages, quiet = FALSE, repos = "http://cran.us.r-project.org") # Installs the missing packages.

#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled above in this file!
library(flexdashboard)
library(knitr)
library(shiny)
#library(ggridges)
library(jsonlite)
library(ggplot2)
library(curl)