#Getting and Cleaning Data - Codebook

##Overview
The data for this project was obtained from: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The link to download the data is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

***

##Results
The results of this project are produced in two seperate .txt files, named `initial-results.txt` & `mean-results.txt`.

###initial-results.txt
The `initial-results.txt` contains a dataset with 68 columns and 10299 rows. It was created using the data obtained from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Only the variables that pertained to the mean and standard deviation for each measurement were used. This was done by extracting the column names containing mean() & std(), based on the information found in the `README.txt` in the *UCI HAR Dataset* folder. The column names were then cleaned up to fall inline with the R syntax. 

Here is a list of the variable contained in the `initial-results.txt` dataset:

|subject|
|activity|
|tBodyAcc.mean.X|
|tBodyAcc.mean.Y|
|tBodyAcc.mean.Z|
|tBodyAcc.std.X|
|tBodyAcc.std.Y|
|tBodyAcc.std.Z|
|tGravityAcc.mean.X|
|tGravityAcc.mean.Y|
|tGravityAcc.mean.Z|
|tGravityAcc.std.X|
|tGravityAcc.std.Y|
|tGravityAcc.std.Z|
|tBodyAccJerk.mean.X|
|tBodyAccJerk.mean.Y|
|tBodyAccJerk.mean.Z|
|tBodyAccJerk.std.X|
|tBodyAccJerk.std.Y|
|tBodyAccJerk.std.Z|
|tBodyGyro.mean.X|
|tBodyGyro.mean.Y|
|tBodyGyro.mean.Z|
|tBodyGyro.std.X|
|tBodyGyro.std.Y|
|tBodyGyro.std.Z|
|tBodyGyroJerk.mean.X|
|tBodyGyroJerk.mean.Y|
|tBodyGyroJerk.mean.Z|
|tBodyGyroJerk.std.X|
|tBodyGyroJerk.std.Y|
|tBodyGyroJerk.std.Z|
|tBodyAccMag.mean|
|tBodyAccMag.std|
|tGravityAccMag.mean|
|tGravityAccMag.std|
|tBodyAccJerkMag.mean|
|tBodyAccJerkMag.std|
|tBodyGyroMag.mean|
|tBodyGyroMag.std|
|tBodyGyroJerkMag.mean|
|tBodyGyroJerkMag.std|
|fBodyAcc.mean.X|
|fBodyAcc.mean.Y|
|fBodyAcc.mean.Z|
|fBodyAcc.std.X|
|fBodyAcc.std.Y|
|fBodyAcc.std.Z|
|fBodyAccJerk.mean.X|
|fBodyAccJerk.mean.Y|
|fBodyAccJerk.mean.Z|
|fBodyAccJerk.std.X|
|fBodyAccJerk.std.Y|
|fBodyAccJerk.std.Z|
|fBodyGyro.mean.X|
|fBodyGyro.mean.Y|
|fBodyGyro.mean.Z|
|fBodyGyro.std.X|
|fBodyGyro.std.Y|
|fBodyGyro.std.Z|
|fBodyAccMag.mean|
|fBodyAccMag.std|
|fBodyBodyAccJerkMag.mean|
|fBodyBodyAccJerkMag.std|
|fBodyBodyGyroMag.mean|
|fBodyBodyGyroMag.std|
|fBodyBodyGyroJerkMag.mean|
|fBodyBodyGyroJerkMag.std|

The `subject` variable identifies the individual who participated in the original study. The `activity` variable is the name of the activity being performed when the mesurement was taken. The remaining variable names fit the following format:

`(The sensor performing the measurement).(function applied to the measurement).(axis of the measurement)`

***

###mean-results.txt
The `mean-results.txt` contains a dataset with 68 columns and 180 rows. It was created using the tidy data from `initial-results.txt`. Each observation is the average of the measurement variables for every unique subject and activity combination.

Here is a list of the variable contained in the `mean-results.txt` dataset:

|subject|
|activity|
|tBodyAcc.mean.X|
|tBodyAcc.mean.Y|
|tBodyAcc.mean.Z|
|tBodyAcc.std.X|
|tBodyAcc.std.Y|
|tBodyAcc.std.Z|
|tGravityAcc.mean.X|
|tGravityAcc.mean.Y|
|tGravityAcc.mean.Z|
|tGravityAcc.std.X|
|tGravityAcc.std.Y|
|tGravityAcc.std.Z|
|tBodyAccJerk.mean.X|
|tBodyAccJerk.mean.Y|
|tBodyAccJerk.mean.Z|
|tBodyAccJerk.std.X|
|tBodyAccJerk.std.Y|
|tBodyAccJerk.std.Z|
|tBodyGyro.mean.X|
|tBodyGyro.mean.Y|
|tBodyGyro.mean.Z|
|tBodyGyro.std.X|
|tBodyGyro.std.Y|
|tBodyGyro.std.Z|
|tBodyGyroJerk.mean.X|
|tBodyGyroJerk.mean.Y|
|tBodyGyroJerk.mean.Z|
|tBodyGyroJerk.std.X|
|tBodyGyroJerk.std.Y|
|tBodyGyroJerk.std.Z|
|tBodyAccMag.mean|
|tBodyAccMag.std|
|tGravityAccMag.mean|
|tGravityAccMag.std|
|tBodyAccJerkMag.mean|
|tBodyAccJerkMag.std|
|tBodyGyroMag.mean|
|tBodyGyroMag.std|
|tBodyGyroJerkMag.mean|
|tBodyGyroJerkMag.std|
|fBodyAcc.mean.X|
|fBodyAcc.mean.Y|
|fBodyAcc.mean.Z|
|fBodyAcc.std.X|
|fBodyAcc.std.Y|
|fBodyAcc.std.Z|
|fBodyAccJerk.mean.X|
|fBodyAccJerk.mean.Y|
|fBodyAccJerk.mean.Z|
|fBodyAccJerk.std.X|
|fBodyAccJerk.std.Y|
|fBodyAccJerk.std.Z|
|fBodyGyro.mean.X|
|fBodyGyro.mean.Y|
|fBodyGyro.mean.Z|
|fBodyGyro.std.X|
|fBodyGyro.std.Y|
|fBodyGyro.std.Z|
|fBodyAccMag.mean|
|fBodyAccMag.std|
|fBodyBodyAccJerkMag.mean|
|fBodyBodyAccJerkMag.std|
|fBodyBodyGyroMag.mean|
|fBodyBodyGyroMag.std|
|fBodyBodyGyroJerkMag.mean|
|fBodyBodyGyroJerkMag.std|

The `subject` variable identifies the individual who participated in the original study. The `activity` variable is the name of the activity being performed when the mesurement was taken. The remaining variable names fit the following format:

`(The sensor performing the measurement).(function applied to the measurement).(axis of the measurement)`