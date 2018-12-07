# Shumai Data Analysis Project
## Author: Fredrik Gerdin Börjesson

### Installation guide
1. Install R, version 3.5.1 or later. Earlier versions may not work properly. 
2. Install RStudio (or other preferred IDE). 
3. Open the file **Data-Analysis.Rproj** in RStudio. 
4. Load the file **dashboard.Rmd** found in the folder **/dashboard/**. 
5. Choose **Run Document** and ensure it is launched in an external window. 

### File descriptions
* **dashboard.Rmd**: Main file that launches the dashboard and calls the required functions.
* **setup.R**: Used to install and load required packages.
* **support.R**: Handles supporting functions. Currently only used to load the data from the database. 
* **analysis.R**: Handles all data analysis. Processes the data, performs necessary calculations and returns the results for presentation in the dashboard. 