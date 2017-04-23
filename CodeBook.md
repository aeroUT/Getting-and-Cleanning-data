# Code Book

# Initial Data
The data can be found on the link below.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Getting data and Cleaning it up
The code intially checks to make sure the file is downloaded and created. 

The final data set is out put to "TidyDataSet.txt" where the data sets of interested are. The data set of interest are mean and standard deviation of the measurments along with the descriptive activties. 

Here is what is being done to get done in order:
   1. Go into the features files and acitity lables and extract the mean, standard deviation and activty
   2. Extracts only the measurements on the mean and standard deviation for each measurement
   3. Load the training and test datasets, training lables and subject who performed the activity window sample (ranges from 1 to 30)
   4. Merge Testing Activities and Subjects
   5. Merge Training dataset, Activities and Subjects
   6. Merge the training and the testing data sets to create one data set
   7. Label the data set with the correct acivity label
   8. Make a molten data frame for easy use
   9. Write out the data frame to "TidayDataSet.tx"
   
#Clean data set
The result has 81 files where the first two columns being subject ID, and acitity. 

tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
