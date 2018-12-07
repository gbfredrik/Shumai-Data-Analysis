CountViewsByDates <- function(data.set, dates) { # This function counts the number of views between the two dates given by the parameter "dates". Returns the complete user table.
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

NormalizeData <- function(data.set) { # Gives each user a rating of their interest for each category, between 0 and 1. 
  t(apply(data.set, 1, function(x)(x-min(x))/(max(x)-min(x))))
  # https://stackoverflow.com/questions/20046257/normalize-rows-of-a-matrix-within-range-0-and-1
}

FilterCategories <- function(data.set, filter.list) { # Filters users based on the slider inputs. Clears NaN and returns the remaining users.
  new.set <- as.data.frame(data.set)
  new.set <- new.set[complete.cases(new.set),]
  
  index <- seq(1, 33, 2)
  for (i in 1:17) {
    new.set <- new.set[(new.set[i] >= filter.list[index[i]] & new.set[i] <= filter.list[index[i]+1]), ]
  }
  return(new.set)
}

GetTopCategory <- function(data.set, limit) { # Returns the category with the most users above the interest level "limit". 
  new.set <- as.data.frame(data.set)
  counted.favs <- sapply(1:17, function(X) length(which(new.set[, X] >= limit )))
  return(colnames(new.set)[which(counted.favs==max(counted.favs))])
}

GetWorstCategory <- function(data.set, limit) { # Returns the category with the most users below the interest level "limit". 
  new.set <- as.data.frame(data.set)
  counted.favs <- sapply(1:17, function(X) length(which(new.set[, X] <= limit )))
  return(colnames(new.set)[which(counted.favs==max(counted.favs))])
}