FetchData <- function(file.name) {
  data.set=data.table::fread(file.name)
  return(data.set)
}


NormalizeData <- function(data.set) {
  t(apply(data.set, 1, function(x)(x-min(x))/(max(x)-min(x))))
  #t(apply(mydata, 1, function(x)(x-min(x))/(max(x)-min(x))))
 # https://stackoverflow.com/questions/20046257/normalize-rows-of-a-matrix-within-range-0-and-1
}

GetChange <- function(data.set.1, data.set.2) {
  
  
}