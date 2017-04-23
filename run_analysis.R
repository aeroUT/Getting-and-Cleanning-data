require(plyr)
require(reshape2)

# Download data and setworking directory
filename <- "har.zip"
if (!file.exists(filename)){
      download.file(url = paste("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                                sep = ""), 
                    destfile = filename, mode = 'wb',cacheOK = FALSE)
}

if (!file.exists("UCI HAR Dataset")) { 
      unzip(filename) 
}

#Get activity labels and convert them to characters
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])

#Get features and convert them to characters
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

#Get the features needed mean and std
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
  #converts to names 
featuresWanted.names <- features[featuresWanted,2]
#Tidy the names
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)


#Load train data set
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Merge train data set
train <- cbind(trainSubjects, trainActivities, train)

#Load test data set
test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Merge test data set
test <- cbind(testSubjects, testActivities, test)

#Merge test and train dataset
CombinedData <- rbind(train, test)

#Label the data set with correct names
colnames(CombinedData) <- c("subject", "activity", featuresWanted.names)

#Convert activity and factors to Labels
CombinedData$activity <- factor(CombinedData$activity, levels = activityLabels[,1],labels = activityLabels[,2])
 
CombinedData$subject <- as.factor(CombinedData$subject)

#Convert data into molten data frame
CombinedData.melted <- melt(CombinedData, id = c("subject", "activity"))

CombinedData.mean <- dcast(CombinedData.melted, subject + activity ~ variable, mean)

#Write a tidy data txt file
write.table(CombinedData.mean, file = "TidyDataSet.txt", row.names = FALSE, quote = FALSE)
            