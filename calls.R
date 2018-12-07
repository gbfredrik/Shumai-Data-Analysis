#Installs and adds the required packages to the project library
source("setup.R")


#Load the built functions from separate files
source("analysis.R")

gdpr.TRUE <- data.set[GDPR_consent == TRUE]

dt <- data.frame(row.names = c("user1", "user2"), v.pol = c(34, 97), v.news = c(86, 3), v.celeb = c(109, 10), v.sports = c(149, 18))

dt1 <- dt
dt1 <- apply(dt[1:4], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))
dt1[]

df <- data.frame(replicate(10,sample(0:1000,1000,rep=TRUE)))
dfscaled <- apply(df[1:10], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))
dfscaled2 <- data.frame(t(dfscaled))

dfcopy <- dfscaled2

dfcopy <- dfcopy[dfcopy$X2 <= 0.1 & dfcopy$X1 == 1, ]
subset(dfscaled2, X1 == 1)
