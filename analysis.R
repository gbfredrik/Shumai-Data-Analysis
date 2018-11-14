GetChange <- function(data.set.1, data.set.2) {
  
  
}


FilterDates <- function(start.date, end.date) {
  #TODO
  #Filter the user views per category by start and end date
}


CountViewsByDates <- function(data.set, start.date, end.date) {
  #TODO
  #new.set <- data.frame(user = character(0), view.counts = list(news = 0, tv = 0))
  
  for (i in 1:1) {
    for (j in 1:27){
      length(which(data.set$category_views[[i]][[j]] >= as.Date("2018-11-07")))
    }
  }
  # return(new.set)
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