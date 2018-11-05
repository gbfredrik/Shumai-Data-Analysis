#Installs and adds the required packages to the project library
source("installs.R")


#Load the built functions from separate files
source("analysis.R")
source("support.R")

#Temp method of loading data
data.set <- FetchData("Mockdata1.csv")
#Print the names of the attributes in the table specified by the input parameter
PrintAttributes(data.set)

mango <- DBConnect()
DBDisconnect(mango)
#mango$insert(data.set)

gdpr.TRUE <- data.set[GDPR_consent == TRUE]

dt <- data.frame(row.names = c("user1", "user2"), v.pol = c(34, 97), v.news = c(86, 3), v.celeb = c(109, 10), v.sports = c(149, 18))

dt1 <- dt
dt1 <- apply(dt[1:4], MARGIN=1, FUN = function(X)(X - min(X))/diff(range(X)))
dt1[]


