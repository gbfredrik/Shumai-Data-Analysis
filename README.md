# Shumai Data Analysis Project
## Author: Fredrik Gerdin Börjesson

### Installation guide
1. Install R version 3.5.1. 
2. Install RStudio. 
3. Open the file **Data-Analysis.Rproj** in RStudio. 
4. Load the file **dashboard.Rmd** found in the folder **/dashboard/**. 
5. Choose **Run Document** and ensure it is launched in an external window. 

### File descriptions
* dashboard.Rmd: Main file that launches the dashboard and calls are required functions.
* setup.R: Used to install required packages and load the necessary libraries.
* support.R: Used to support the required functions for the data analysis. 
* calls.R: To be deleted?
* analysis.R: Used for processing of the user data. 
* test.R: Used for testing functions and calls before implementation into dashboard. 

### Help functions

#### Function components
* **body(functionName)**: Provides the code inside the function. 
* **formals(functionName)**: Provides the list of arguments which controls how you can call the function. 
* **environment(functionName)**: Provides the "map" of the location of the function's variables. 

*NOTE*: Primitive functions will all return null as they call C code directly, containing no R code. 

Good resource: http://adv-r.had.co.nz/

### Icon resource
* Glyphicons: https://getbootstrap.com/docs/3.3/components/