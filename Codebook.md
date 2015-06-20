#Getting and Cleaning Data - Codebook
***

##Overview
The data for this project was obtained from: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The link to download the data is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

***

##Process
The `run_analysis.R` script preforms the following actions on the UCI HAR Dataset to produce 2 tidy datasets.

1. Creates the **data** and **results** folders in the working directory, if they do not already exist.
2. Downloads the dataset .zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzips it in the **data** folder.
3. Reads the following .txt files into their own data frame.
    * `test.x` contains the test data from `X_test.txt`
    * `test.y` contains the test activity ids from `y_test.txt`
    * `test.sub` contains the test subject ids from `subject_test.txt`
    * `train.x` contains the training data from `X_train.txt`
    * `train.y` contains the training activity ids from `y_train.txt`
    * `train.sub` contains the training subject ids from `subject_train.txt`
    * `features` contains the variable names for the data in `test.x` & `train.x`
    * `activities` contains the labels for the activity ids in `test.y` & `train.y`
4. Converts the second column of the `features` data frame into the column names for the `test.x` & `train.x` data frames.
5. Combines `test.sub`, `test.y` and `test.x` into a larger data frame named `test.data`.
6. Combines `train.sub`, `train.y` and `train.x` into a larger data frame named `train.data`.
7. Combines 'test.data' & 'train.data' into a single data frame names `data.all`.
8. Extract the columns whose name contains `mean()` & `std()` for the tidy dataset.
9. Converts the activity numeric ids to descriptive names.
10. Cleans up the column names by removing the `()` and changing `-` to `.`
11. Creates an initial tidy dataset file named `initial-results.txt` in the **results** folder.
12. Finds the average for all variables grouped by the `activity` and `subject' columns.
13. Creates a second tidy dataset file named 'mean-results.txt' in the **results** folder.

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