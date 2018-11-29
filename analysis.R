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
  #print(test.set)
  for (i in 1:nrow(data.set)) {
    test.set[i,] <- lapply(1:17, function(X) length(which(data.set$category_views[[X]][[i]] >= dates[1] & 
                                                            data.set$category_views[[X]][[i]] <= dates[2])))
  }
  #print("Str: ")
  #str(test.set)
  
  #print("Type: ")
  #typeof(test.set)
  print(test.set)
  return(test.set)
}


NormalizeData <- function(data.set) {
  t(apply(data.set, 1, function(x)(x-min(x))/(max(x)-min(x))))
  # https://stackoverflow.com/questions/20046257/normalize-rows-of-a-matrix-within-range-0-and-1
}

FilterCategories <- function(data.set, filter.list) {
  #TODO
  #for (i in 1:17) {
    print(data.set[1])
  #}
  
  #Filter each category according to the filter list
  #List structure:
  #lower_limit  upper_limit  category_name
  #0.3          .94          news
  #osv...
}

GetFavouriteCategory <- function(data.set, limit) {
  counted.favs <- lapply(1:17, FUN = function(X) length(which(data.set[[X]] >= limit )))
  print(str(as.data.frame(data.set)))
  print(str(as.data.frame(counted.favs)))
  return(colnames(data.set)[max.col(counted.favs,ties.method="first")])
}
#test.norm <- NormalizeData(count.df)
#GetFavouriteCategory(test.norm, 0.9)
