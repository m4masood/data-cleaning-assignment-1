#setwd("C:\\Projects\\Personal\\DataScience\\Getting and Cleaning Data\\Assignment 1")

#-------------------------------------------------------------------------
#1.Merges the training and the test sets to create one data set.
#--------------------------------------------------------------------------


#loading training data
print("Loading training data sets...")

trainingData_X <-       read.table("./data/train/X_train.txt", header=F)
trainingData_y <-       read.table("./data/train/y_train.txt", header=F)
trainingData_subject <- read.table("./data/train/subject_train.txt", header=F)

trainingData_body_acc_x <-  read.table("./data/train/Inertial Signals/body_acc_x_train.txt", header=F)
trainingData_body_acc_y <-  read.table("./data/train/Inertial Signals/body_acc_y_train.txt", header=F)
trainingData_body_acc_z <-  read.table("./data/train/Inertial Signals/body_acc_z_train.txt", header=F)
trainingData_body_gyro_x <- read.table("./data/train/Inertial Signals/body_gyro_x_train.txt", header=F)
trainingData_body_gyro_y <- read.table("./data/train/Inertial Signals/body_gyro_y_train.txt", header=F)
trainingData_body_gyro_z <- read.table("./data/train/Inertial Signals/body_gyro_z_train.txt", header=F)
trainingData_total_acc_x <- read.table("./data/train/Inertial Signals/total_acc_x_train.txt", header=F)
trainingData_total_acc_y <- read.table("./data/train/Inertial Signals/total_acc_y_train.txt", header=F)
trainingData_total_acc_z <- read.table("./data/train/Inertial Signals/total_acc_z_train.txt", header=F)

print("counting number of rows for training data sets...")
#calculating number of rows for validation purpose
trainingData_rows_X <- dim(trainingData_X)[1]
trainingData_rows_y <- dim(trainingData_y)[1]
trainingData_rows_subject <- dim(trainingData_subject)[1]

trainingData_rows_body_acc_x <-  dim(trainingData_body_acc_x)[1]
trainingData_rows_body_acc_y <-  dim(trainingData_body_acc_y)[1]
trainingData_rows_body_acc_z <-  dim(trainingData_body_acc_z)[1]
trainingData_rows_body_gyro_x <- dim(trainingData_body_gyro_x)[1]
trainingData_rows_body_gyro_y <- dim(trainingData_body_gyro_y)[1]
trainingData_rows_body_gyro_z <- dim(trainingData_body_gyro_z)[1]
trainingData_rows_total_acc_x <- dim(trainingData_total_acc_x)[1]
trainingData_rows_total_acc_y <- dim(trainingData_total_acc_y)[1]
trainingData_rows_total_acc_z <- dim(trainingData_total_acc_z)[1]

#loading test sets
print("Loading test data sets...")

testData_X <-       read.table("./data/test/X_test.txt", header=F)
testData_y <-       read.table("./data/test/y_test.txt", header=F)
testData_subject <- read.table("./data/test/subject_test.txt", header=F)

testData_body_acc_x <-  read.table("./data/test/Inertial Signals/body_acc_x_test.txt", header=F)
testData_body_acc_y <-  read.table("./data/test/Inertial Signals/body_acc_y_test.txt", header=F)
testData_body_acc_z <-  read.table("./data/test/Inertial Signals/body_acc_z_test.txt", header=F)
testData_body_gyro_x <- read.table("./data/test/Inertial Signals/body_gyro_x_test.txt", header=F)
testData_body_gyro_y <- read.table("./data/test/Inertial Signals/body_gyro_y_test.txt", header=F)
testData_body_gyro_z <- read.table("./data/test/Inertial Signals/body_gyro_z_test.txt", header=F)
testData_total_acc_x <- read.table("./data/test/Inertial Signals/total_acc_x_test.txt", header=F)
testData_total_acc_y <- read.table("./data/test/Inertial Signals/total_acc_y_test.txt", header=F)
testData_total_acc_z <- read.table("./data/test/Inertial Signals/total_acc_z_test.txt", header=F)

#counting number of rows for test data sets for validation
#calculating number of rows for validation purpose
print("counting number of rows for test data sets...")
testData_rows_X <-           dim(testData_X)[1]
testData_rows_y <-           dim(testData_y)[1]
testData_rows_subject <-     dim(testData_subject)[1]

testData_rows_body_acc_x <-  dim(testData_body_acc_x)[1]
testData_rows_body_acc_y <-  dim(testData_body_acc_y)[1]
testData_rows_body_acc_z <-  dim(testData_body_acc_z)[1]
testData_rows_body_gyro_x <- dim(testData_body_gyro_x)[1]
testData_rows_body_gyro_y <- dim(testData_body_gyro_y)[1]
testData_rows_body_gyro_z <- dim(testData_body_gyro_z)[1]
testData_rows_total_acc_x <- dim(testData_total_acc_x)[1]
testData_rows_total_acc_y <- dim(testData_total_acc_y)[1]
testData_rows_total_acc_z <- dim(testData_total_acc_z)[1]



#merging data sets
print("Merging training and test data sets...")

data_X <-       rbind(trainingData_X, testData_X)
data_y <-       rbind(trainingData_y, testData_y)
data_subject <- rbind(trainingData_subject, testData_subject)

data_body_acc_x <-  rbind(trainingData_body_acc_x, testData_body_acc_x)
data_body_acc_y <-  rbind(trainingData_body_acc_y, testData_body_acc_y)
data_body_acc_z <-  rbind(trainingData_body_acc_z, testData_body_acc_z)
data_body_gyro_x <- rbind(trainingData_body_gyro_x, testData_body_gyro_x)
data_body_gyro_y <- rbind(trainingData_body_gyro_y, testData_body_gyro_y)
data_body_gyro_z <- rbind(trainingData_body_gyro_z, testData_body_gyro_z)
data_total_acc_x <- rbind(trainingData_total_acc_x, testData_total_acc_x)
data_total_acc_y <- rbind(trainingData_total_acc_y, testData_total_acc_y)
data_total_acc_z <- rbind(trainingData_total_acc_z, testData_total_acc_z)

#counting number of rows
print("counting number of rows for merged data sets...")
data_rows_X <-           dim(data_X)[1]
data_rows_y <-           dim(data_y)[1]
data_rows_subject <-     dim(data_subject)[1]

data_rows_body_acc_x <-  dim(data_body_acc_x)[1]
data_rows_body_acc_y <-  dim(data_body_acc_y)[1]
data_rows_body_acc_z <-  dim(data_body_acc_z)[1]
data_rows_body_gyro_x <- dim(data_body_gyro_x)[1]
data_rows_body_gyro_y <- dim(data_body_gyro_y)[1]
data_rows_body_gyro_z <- dim(data_body_gyro_z)[1]
data_rows_total_acc_x <- dim(data_total_acc_x)[1]
data_rows_total_acc_y <- dim(data_total_acc_y)[1]
data_rows_total_acc_z <- dim(data_total_acc_z)[1]

print("Performing validation of merging...")
if(trainingData_rows_X + testData_rows_X != data_rows_X){
  print("mismatch rows found for X")
}

if(trainingData_rows_y + testData_rows_y != data_rows_y){
  print("mismatch rows found for y")
}


if(trainingData_rows_subject + testData_rows_subject != data_rows_subject){
  print("mismatch rows found for subject")
}


if(trainingData_rows_body_acc_x + testData_rows_body_acc_x != data_rows_body_acc_x){
  print("mismatch rows found for body_acc_x")
}

if(trainingData_rows_body_acc_y + testData_rows_body_acc_y != data_rows_body_acc_y){
  print("mismatch rows found for body_acc_y")
}

if(trainingData_rows_body_acc_z + testData_rows_body_acc_z != data_rows_body_acc_z){
  print("mismatch rows found for body_acc_z")
}

if(trainingData_rows_body_gyro_x + testData_rows_body_gyro_x != data_rows_body_gyro_x){
  print("mismatch rows found for body_gyro_x")
}

if(trainingData_rows_body_gyro_y + testData_rows_body_gyro_y != data_rows_body_gyro_y){
  print("mismatch rows found for body_gyro_y")
}

if(trainingData_rows_body_gyro_z + testData_rows_body_gyro_z != data_rows_body_gyro_z){
  print("mismatch rows found for body_gyro_z")
}

if(trainingData_rows_total_acc_x + testData_rows_total_acc_x != data_rows_total_acc_x){
  print("mismatch rows found for body_acc_x")
}

if(trainingData_rows_total_acc_y + testData_rows_total_acc_y != data_rows_total_acc_y){
  print("mismatch rows found for body_acc_y")
}

if(trainingData_rows_total_acc_z + testData_rows_total_acc_z != data_rows_total_acc_z){
  print("mismatch rows found for body_acc_z")
}

print("Validation of merging done. If you see any error for any variable, please correct and re-run the script otherwise everything is ok.")