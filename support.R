#This file hosts the support functions for the data analysis

#This functions saves a variable or data set to a .csv file as specified by the outputFileName parameter.
SaveData <- function(data.Name, separator, output.File.Name) {
  fwrite(data.Name, file = output.File.Name, sep = separator)
}


ImportJSON <- function(link) {
  #selected.file <- file.choose()
  #print(selected.file)
  text <- readLines(curl(link))
  data <- fromJSON(text)
  
  # Parse and convert dates
  data$category_views <- list(data[6]$category_views[[1]]$viewed)
  
  scaleFunc <- function(x) {
    return(as.Date(substring(x, 0, 10)))
  }
  
  for (temp in 1:27) {
    data$category_views[[1]][[temp]] <- lapply(data$category_views[[1]][[temp]], scaleFunc)
  }
  
  return(data)
}