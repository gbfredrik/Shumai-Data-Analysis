#This file hosts the support functions for the data analysis

#This functions saves a variable or data set to a .csv file as specified by the outputFileName parameter.
saveData <- function(dataName, separator, outputFileName) {
  fwrite(dataName, file = outputFileName, sep = separator)
}