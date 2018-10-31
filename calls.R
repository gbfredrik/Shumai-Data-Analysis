#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled in the installs.R file!
library(mongolite)
library(ggplot2)
library(maps)
library(ggmap)
library(lubridate)
library(gridExtra)

source("analysis.R")

dataSet <- fetchData("Mockdata1.csv")

#Print the names on the attributes in the table specified by the name
printNames(dataSet)
