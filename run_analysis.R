#setwd("C:\\Projects\\Personal\\DataScience\\Getting and Cleaning Data\\Assignment 1")
#source("./run_analysis.R")

#-------------------------------------------------------------------------
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive activity names. 
#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#--------------------------------------------------------------------------

#calling merge_training_and_test_set.R to merge data sets
source("./merge_training_and_test_set.R")

#calling script to create tidy data set
source("./create_tidy_data_set.R")
