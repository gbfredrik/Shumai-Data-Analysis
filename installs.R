#This script installs and adds the required packages to the project library

#Install a list of required packages.
install.packages(c("data.table", "mongolite", "flexdashboard", "d3heatmap"), quiet = TRUE, repos = "http://cran.us.r-project.org")
#flexdashboard behövs för dashboarden obvs... Kan ej installera?
#Också relevanta?: ggplot2, ggmap, maps, lubridate, 

#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled above in this file!
library(mongolite)
#library(data.table)
