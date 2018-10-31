fetchData <- function(fileName) {
  dataSet=data.table::fread(fileName)
  return(dataSet)
}

printNames <- function(setName) {
  names(setName)
}


normalizeData<- function() {
  
  
  
}