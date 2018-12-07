category.list.names <- c("Animals", "Cars", "Celeb", "Comedy & Entertainment", "Creative", "Education", "Gaming", "Kids", "Lifestyle & How-to", "Movies", "Music", "News", "Sports", "Tech", "Travel", "TV", "Webcam")
category.list.id <- c("animals", "auto", "people", "fun", "creation", "school", "videogames", "kids", "lifestyle", "shortfilms", "music", "news", "sport", "tech", "travel", "tv", "webcam")


source("setup.R")
source("support.R")
source("analysis.R")
link <- "http://pumi-4-1.tddc88-2018.ida.liu.se:8085/api/user"
raw.data <- ImportJSON(link)

count.df <- CountViewsByDates(raw.data, c(as.Date("2018-12-01"), as.Date("2018-12-07")))

NormalizeData(count.df)
