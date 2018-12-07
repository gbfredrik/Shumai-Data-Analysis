# This file hosts the support functions for the data analysis

# This function imports the data from the given link parameter, parse the dates, and returns the data set.
ImportJSON <- function(link) {
  #selected.file <- file.choose()
  #print(selected.file)
  text <- readLines(curl(link))
  data <- fromJSON(text)
  
  # Parse and convert dates
  #data$category_views <- list(data[6]$category_views[[1]]$viewed)
  
  scaleFunc <- function(x) {
    return(as.Date(substring(x, 0, 10)))
  }
  
  for (temp in 1:17) {
    data$category_views[[temp]] <- lapply(data$category_views[[temp]], scaleFunc)
  }
  
  return(data)
}