# Getting and Cleaning Data - Course Project

## Overview
This is a repo containing the course project for Coursera's Getting and Cleaning Data, which is part of the Data Science Specialization by John Hopkins.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

***

## Objectives
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

***

## Requirements
The script was written in R version 3.1.3.

***

## Instructions
2. Make sure your working directory contains the `run_analysis.R` script.
3. Run the script in RStudio using `source('run_analysis.R')`
1. The script will download the data from the [UCI Machine Learning Repository](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extract it to a folder called **data** in your working directory.
4. The script will output 2 text files into the **results** folder in your working directory.

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