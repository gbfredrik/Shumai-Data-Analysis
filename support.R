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

ImportJSON <- function() {
  selected.file <- file.choose()
  print(selected.file)
  channel.df <- fromJSON(selected.file)
  return(channel.df)
}
