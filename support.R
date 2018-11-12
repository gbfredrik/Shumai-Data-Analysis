#This file hosts the support functions for the data analysis

#This functions saves a variable or data set to a .csv file as specified by the outputFileName parameter.
SaveData <- function(data.Name, separator, output.File.Name) {
  fwrite(data.Name, file = output.File.Name, sep = separator)
}

DBConnect <- function(user, pass) {
  URI <- paste0("mongodb://", user, ":", pass, "@pumi-4-1.tddc88-2018.ida.liu.se:27017/newz")
  mango = mongo(url = URI)
  #url format: "mongodb://[username:password@]host1[:port1][,host2[:port2],...[/[database][?options]]"
  print("Connected")
  return(mango)
}

DBDisconnect <- function(db.env) {
  db.env$disconnect()
  print("Discon")
}

DBPrintAll <- function(db.env) {
  db.env$find('{}')
}

ImportJSON <- function(link) {
  #selected.file <- file.choose()
  #print(selected.file)
  text <- readLines(curl(link))
  channel.df <- fromJSON(text)
  return(channel.df)
}


library(curl)
link <- "http://pumi-4-1.tddc88-2018.ida.liu.se:8085/api/user"
new <- ImportJSON(link)
new.view <- new[6]
newest <- new.view[1]$category_views[]

thing <- as.data.frame(new.view[]$category_views[])
thing$category_name
views <- thing$viewed
neweeer <- views[2]
substr(views, 0, 5)

dates <- lapply(views[], FUN = function(X)as.Date(substring(X, 0, 10)))
dates[4]

dates.filtered <- 123
