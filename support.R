#This file hosts the support functions for the data analysis

#This functions saves a variable or data set to a .csv file as specified by the outputFileName parameter.
SaveData <- function(data.Name, separator, output.File.Name) {
  fwrite(data.Name, file = output.File.Name, sep = separator)
}


ImportJSON <- function(link) {
  #selected.file <- file.choose()
  #print(selected.file)
  text <- readLines(curl(link))
  user.df <- fromJSON(text)
  return(user.df)
}