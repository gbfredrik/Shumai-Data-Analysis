#This script installs and adds the required packages to the project library

#Install a list of required packages.
install.packages(c("mongolite", "flexdashboard", "d3heatmap"), quiet = FALSE, repos = "http://cran.us.r-project.org")

#Loads the namespaces of each package. Can only load/attach INSTALLED packages, handled above in this file!
library(mongolite)