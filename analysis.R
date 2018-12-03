GetChange <- function(data.set.1, data.set.2) {
  
  
}


FilterDates <- function(start.date, end.date) {
  #TODO
  #Filter the user views per category by start and end date
}


CountViewsByDates <- function(data.set, dates) {
  names <- c("animals", "auto", "people", "fun", "creation", "school", "videogames", "kids", "lifestyle", "shortfilms", "music", "news", "sport", "tech", "travel", "tv", "webcam")
  test.set <- data.frame(matrix(ncol = 17, nrow = nrow(data.set)))
  colnames(test.set) <- names
  rownames(test.set) <- data.set$user_name

  for (i in 1:nrow(data.set)) {
    test.set[i,] <- lapply(1:17, function(X) length(which(data.set$category_views[[X]][[i]] >= dates[1] & 
                                                            data.set$category_views[[X]][[i]] <= dates[2])))
  }
  return(test.set)
}


NormalizeData <- function(data.set) {
  t(apply(data.set, 1, function(x)(x-min(x))/(max(x)-min(x))))
  # https://stackoverflow.com/questions/20046257/normalize-rows-of-a-matrix-within-range-0-and-1
}

FilterCategories <- function(data.set, filter.list) {
  new.set <- as.data.frame(data.set)
  index <- seq(1, 33, 2)
  
  for (i in 1:17) {
    new.set <- new.set[(new.set[i] >= filter.list[index[i]] & new.set[i] <= filter.list[index[i]+1]), ]
  }
  
  print("new.set end:")
  print(new.set)
  return(new.set)
}

GetFavouriteCategory <- function(data.set, limit) {
  counted.favs <- lapply(1:17, FUN = function(X) length(which(data.set[[X]] >= limit )))
  print(str(as.data.frame(data.set)))
  print(str(as.data.frame(counted.favs)))
  return(colnames(data.set)[max.col(counted.favs,ties.method="first")])
}
#test.norm <- NormalizeData(count.df)
#GetFavouriteCategory(test.norm, 0.9)
