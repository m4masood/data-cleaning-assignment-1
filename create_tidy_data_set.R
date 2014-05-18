#setwd("C:\\Projects\\Personal\\DataScience\\Getting and Cleaning Data\\Assignment 1")

#-------------------------------------------------------------------------
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Use descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive activity names. 
#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#--------------------------------------------------------------------------


#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#reading features list
features <- read.table("./Data/features.txt")

lengthOfStringContainingMeanOrStdWord <- function(someStringData){
  if(length(grep("mean", someStringData)) > 0 | length(grep("std", someStringData)) > 0){
    return (TRUE)
  }
  else{
    return (FALSE)
  }
  
}

if(file.exists("tidyData") != TRUE){
  dir.create("tidyData")
}

#get all column indices which contains word mean or std
columnIndicies <- which(sapply(features$V2, lengthOfStringContainingMeanOrStdWord)==1)
tidyData_X <- data_X[, columnIndicies]
names(tidyData_X) <- features$V2[columnIndicies]

write.csv(tidyData_X, "./TidyData/tidyData_X.csv")

#4.Appropriately labels the data set with descriptive activity names. 
activity_labels <- read.table("./Data/activity_labels.txt")

#changing activity label in y vector
tidyData_y <- merge(activity_labels, data_y, by=c("V1", "V1"))
tidyData_y$V1 <- NULL
names(tidyData_y) <- "ActivityName"
write.csv(tidyData_y, "./TidyData/tidyData_y.csv")