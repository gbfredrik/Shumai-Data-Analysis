GetChange <- function(data.set.1, data.set.2) {
  
  
}


FilterDates <- function(start.date, end.date) {
  #TODO
  #Filter the user views per category by start and end date
}


CountViewsByDates <- function(data.set, dates) {
  #TODO Fixa lite
  
  #print(dates)
  #print(nrow(data.set))
  names <- c("animals", "auto", "people", "fun", "creation", "school", "videogames", "kids", "lifestyle", "shortfilms", "music", "news", "sport", "tech", "travel", "tv", "webcam")
  test.set <- data.frame(matrix(ncol = 17, nrow = nrow(data.set)))
  colnames(test.set) <- names
  rownames(test.set) <- data.set$user_name
  #print(test.set)
  
  test.set[][] <- lapply(1:17, function(X) length(which(data.set$category_views[[X]][[1]] >= dates[1] & 
                                                      data.set$category_views[[X]][[1]] <= dates[2])))
  #print(test.set)
  
  #setNames(data.frame(matrix(ncol = 3, nrow = 0)), c("name", "age", "gender"))
  
  #lapply(data.set, function(x) length(which(data.set$category_views[][x] >= dates[1])))
  
  #for (i in 1:1) {
  #  
  #}
  return(test.set)
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