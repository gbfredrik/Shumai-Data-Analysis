dt <- data.frame(row.names = c("user1", "user2"), v.pol = c(34, 97), v.news = c(86, 3), v.celeb = c(109, 10), v.sports = c(149, 18))

dt1 <- dt
dt1 <- apply(dt[1:4], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))

#library(d3heatmap)
#d3heatmap(dt1, scale = "none", dendrogram = "none", colors = "Blues", show_grid = FALSE, Rowv = FALSE)

df <- data.frame(replicate(10,sample(0:1000,1000,rep=TRUE)))
dfscaled <- apply(df[1:10], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))

dfscaled2 <- data.frame(t(dfscaled))
df.stack <- stack(dfscaled2)




# channel.df <- ImportJSON()

#channel.df[]$list$name
#category.list.names <- c("Animals", "Cars", "Celeb", "Comedy & Entertainment", "Creative", "Education", "Gaming", "Kids", "Lifestyle & How-to", "Movies", "Music", "News", "Sports", "Tech", "Travel", "TV", "Webcam")
#category.list.id <- tolower(category.list.names)
