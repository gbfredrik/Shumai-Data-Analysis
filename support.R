# This file hosts the support functions for the data analysis

# This function imports the data from the given link parameter, parses the dates, and returns the data set.
ImportJSON <- function(link) {
  text <- readLines(curl(link))
  data <- fromJSON(text)
  
  # Parse and convert dates
  dateFunc <- function(x) { # FUTURE WORK: Revamp to include timestamps (HH:MM:SS). 
    return(as.Date(substring(x, 0, 10)))
  }
  
  for (temp in 1:17) {
    data$category_views[[temp]] <- lapply(data$category_views[[temp]], dateFunc)
  }
  
  return(data)
}