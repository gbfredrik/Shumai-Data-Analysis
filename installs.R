#This script installs and adds the required packages to the project library

#Install a list of required packages.
install.packages(c("data.table", "mongolite"), quiet = FALSE)
#flexdashboard behövs för dashboarden obvs... Kan ej installera?
#Också relevanta?: ggplot2, ggmap, maps, lubridate, 

#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled in the installs.R file!
library(mongolite)
library(data.table)