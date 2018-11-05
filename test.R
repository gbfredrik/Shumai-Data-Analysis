dt <- data.frame(row.names = c("user1", "user2"), v.pol = c(34, 97), v.news = c(86, 3), v.celeb = c(109, 10), v.sports = c(149, 18))

dt1 <- dt
dt1 <- apply(dt[1:4], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))