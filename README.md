#data-cleaning-assignment-1

This repository contains three R scripts to create a tidy data set

1. run_analysis.R
2. merge_training_and_test_set.R
3. create_tidy_data_set.R

The run_analysis.R calls merge and create tidy data set scripts to merge and create a tidy data sets.

The merge data sets are stored in variable called data_ so for instance 
data from X_train and X_test are merged into data_X etc.

The tidy data set are create in two files 1) tidyData_X 2) tidyData_y

The run_analysis.R script assumes the data are in "Data" folder. To run the script, you need to browse to that folder first. 
For instance my script directory is C:\DataScience\Getting and Cleaning Data\Assignment 1 so in R we can use below script (specific to windows) to run the script:

setwd("C:\\DataScience\\Getting and Cleaning Data\\Assignment 1")
source("./run_analysis.R")