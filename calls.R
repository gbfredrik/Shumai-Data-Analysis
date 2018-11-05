#Installs and adds the required packages to the project library
source("installs.R")


#Load the built functions from separate files
source("analysis.R")
source("support.R")

#Temp method of loading data
data.set <- FetchData("Mockdata1.csv")

mango <- DBConnect()
DBDisconnect(mango)
#mango$insert(data.set)

#Print the names of the attributes in the table specified by the input parameter
PrintAttributes(data.set)

gdpr.TRUE <- data.set[GDPR_consent == TRUE]

#NormalizeData(data.set)
#(data.set)[ , .(mean_r_news = mean(R_news), mean_r_pol = mean(R_sports))]
means <- data.set[, lapply(.SD, mean)]


apply(data.set, 1, min)
#head(data.set)
