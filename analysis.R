fetchData <- function(fileName) {
  dataSet=data.table::fread(fileName)
  return(dataSet)
}

printAttributes <- function(setName) {
  names(setName)
}


normalizeData <- function(dataSet) {
  t(apply(dataSet, 1, function(x)(x-min(x))/(max(x)-min(x))))
  #t(apply(mydata, 1, function(x)(x-min(x))/(max(x)-min(x))))
 # https://stackoverflow.com/questions/20046257/normalize-rows-of-a-matrix-within-range-0-and-1
}

getChange <- function(dataSet1, dataSet2) {
  
  
}