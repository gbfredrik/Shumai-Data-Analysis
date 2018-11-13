GetChange <- function(data.set.1, data.set.2) {
  
  
}


FilterDates <- function(start.date, end.date) {
  #TODO
  #Filter the user views per category by start and end date
}


CountViews <- function(data.set) {
  
  
}


NormalizeData <- function(data.set) {
  t(apply(data.set, 1, function(x)(x-min(x))/(max(x)-min(x))))
  # https://stackoverflow.com/questions/20046257/normalize-rows-of-a-matrix-within-range-0-and-1
}

FilterCategories <- function(filter.list, data.set) {
  #TODO
  #Filter each category according to the filter list
  #List structure:
  #lower_limit  upper_limit  category_name
  #0.3          .94          news
  #osv...
}