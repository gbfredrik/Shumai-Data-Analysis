df <- data.frame(replicate(10,sample(0:1000,1000,rep=TRUE)))
dfscaled <- apply(df[1:10], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))

dfscaled2 <- data.frame(t(dfscaled))
df.stack <- stack(dfscaled2)


category.list.names <- c("Animals", "Cars", "Celeb", "Comedy & Entertainment", "Creative", "Education", "Gaming", "Kids", "Lifestyle & How-to", "Movies", "Music", "News", "Sports", "Tech", "Travel", "TV", "Webcam")
category.list.id <- c("animals", "auto", "people", "fun", "creation", "school", "videogames", "kids", "lifestyle", "shortfilms", "music", "news", "sport", "tech", "travel", "tv", "webcam")


source("setup.R")
source("support.R")
library(curl)
link <- "http://pumi-4-1.tddc88-2018.ida.liu.se:8085/api/user"
raw.data <- ImportJSON(link)
data <- raw.data
data$category_views <- list(data[6]$category_views[[1]]$viewed)

scaleFunc <- function(x) {
  return(as.Date(substring(x, 0, 10)))
}

for (temp in 1:27) {
  data$category_views[[1]][[temp]] <- lapply(data$category_views[[1]][[temp]], scaleFunc)
}



dates <- c("", "", "")
l = list(a = c(2, 3, 1, 5, 1), b = c(4, 3, 3, 5, 2), c = c(5, 1, 3, 2, 4))

# dates <- lapply(views[], FUN = function(X)as.Date(substring(X, 0, 10)))