## Initial setup

if (!file.exists("data")){
  dir.create(file.path("data"))
}

if (!file.exists("results")){
  dir.create(file.path("results"))
}

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,destfile="./data/UCI_HAR_Dataset.zip")
unzip("./data/UCI_HAR_Dataset.zip", exdir = "./data")

## Create test data frames
test.x <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "activity")
test.sub <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

## Create train data frames
train.x <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "activity")
train.sub <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

## Create label data frames
features <- read.table("./data/UCI HAR Dataset/features.txt")
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Convert features to column names for .x data frames
colnames(test.x) <- features[,2]
colnames(train.x) <- features[,2]

## Merge test data frames
test.data <- cbind(test.sub,test.y,test.x)


## Merge train data frames
train.data <- cbind(train.sub,train.y,train.x)


## Merge all test & train data
data.all <- rbind(test.data,train.data)

## Extract only the measurements on the mean and standard deviation for each measurement
data.all <- data.all[,c("subject","activity",grep("mean\\(\\)|std\\(\\)",names(data.all),value=TRUE))]

## Use descriptive activity names to name the activities in the data set
data.all$activity <- activities[,2][data.all$activity]

## Appropriately label the data set with descriptive variable names
colnames(data.all)  <- gsub("\\(\\)","",names(data.all))
colnames(data.all)  <- gsub("\\-",".",names(data.all))

## Create initial results file
write.table(data.all, file="./results/initial-results.txt", row.name=FALSE)

## Create a second tidy data set with the average of each variable for each activity and subject
data.agg <- aggregate(. ~ subject+activity, data = data.all, mean)
write.table(data.agg, file="./results/mean-results.txt", row.name=FALSE)