source("installs.R")

#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled in the installs.R file!
library(mongolite)
library(ggplot2)
library(maps)
library(ggmap)
library(lubridate)
library(gridExtra)
library(data.table)

#Load the built functions from separate files
source("analysis.R")
source("support.R")

#Temp method of loading data
dataSet <- fetchData("Mockdata1.csv")

my_mongo = mongo(url = "mongodb://pumi-4-1.tddc88-2018.ida.liu.se:27017/<Namn-på-vår-db>")
#my_mongo$insert(dataSet)

#Print the names of the attributes in the table specified by the input parameter
printAttributes(dataSet)

gdprTRUE <- dataSet[GDPR_consent == TRUE]

#normalizeData(dataSet)
#(dataSet)[ , .(mean_r_news = mean(R_news), mean_r_pol = mean(R_sports))]
means <- dataSet[, lapply(.SD, mean)]


#t(apply(dataSet, 10, function(x)(x-min(x))/(max(x)-min(x))))
apply(dataSet, 1, min)
#head(dataSet)
