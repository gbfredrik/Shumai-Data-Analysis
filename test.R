df <- data.frame(replicate(10,sample(0:1000,1000,rep=TRUE)))
dfscaled <- apply(df[1:10], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))

dfscaled2 <- data.frame(t(dfscaled))
df.stack <- stack(dfscaled2)


category.list.names <- c("Animals", "Cars", "Celeb", "Comedy & Entertainment", "Creative", "Education", "Gaming", "Kids", "Lifestyle & How-to", "Movies", "Music", "News", "Sports", "Tech", "Travel", "TV", "Webcam")
category.list.id <- c("animals", "auto", "people", "fun", "creation", "school", "videogames", "kids", "lifestyle", "shortfilms", "music", "news", "sport", "tech", "travel", "tv", "webcam")


source("setup.R")
source("support.R")
source("analysis.R")
link <- "http://pumi-4-1.tddc88-2018.ida.liu.se:8085/api/user"
raw.data <- ImportJSON(link)

lapply(1:17, function(X) length(which(raw.data$category_views[[X]][[1]] >= as.Date("2018-11-19"))))

count.df <- CountViewsByDates(raw.data, c(as.Date("2018-11-22"), as.Date("2018-11-30")))

NormalizeData(count.df)


#data <- raw.data
#data$category_views <- list(data[6]$category_views[[1]]$viewed)

scaleFunc <- function(x) {
  return(as.Date(substring(x, 0, 10)))
}

for (temp in 1:27) {
  data$category_views[[1]][[temp]] <- lapply(data$category_views[[1]][[temp]], scaleFunc)
}



# dates <- lapply(views[], FUN = function(X)as.Date(substring(X, 0, 10)))