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
1	tBodyAccMeanX
2	tBodyAccMeanY
3	tBodyAccMeanZ
4	tBodyAccStdX
5	tBodyAccStdY
6	tBodyAccStdZ
7	tGravityAccMeanX
8	tGravityAccMeanY
9	tGravityAccMeanZ
10	tGravityAccStdX
11	tGravityAccStdY
12	tGravityAccStdZ
13	tBodyAccJerkMeanX
14	tBodyAccJerkMeanY
15	tBodyAccJerkMeanZ
16	tBodyAccJerkStdX
17	tBodyAccJerkStdY
18	tBodyAccJerkStdZ
19	tBodyGyroMeanX
20	tBodyGyroMeanY
21	tBodyGyroMeanZ
22	tBodyGyroStdX
23	tBodyGyroStdY
24	tBodyGyroStdZ
25	tBodyGyroJerkMeanX
26	tBodyGyroJerkMeanY
27	tBodyGyroJerkMeanZ
28	tBodyGyroJerkStdX
29	tBodyGyroJerkStdY
30	tBodyGyroJerkStdZ
31	tBodyAccMagMean
32	tBodyAccMagStd
33	tGravityAccMagMean
34	tGravityAccMagStd
35	tBodyAccJerkMagMean
36	tBodyAccJerkMagStd
37	tBodyGyroMagMean
38	tBodyGyroMagStd
39	tBodyGyroJerkMagMean
40	tBodyGyroJerkMagStd
41	fBodyAccMeanX
42	fBodyAccMeanY
43	fBodyAccMeanZ
44	fBodyAccStdX
45	fBodyAccStdY
46	fBodyAccStdZ
47	fBodyAccMeanFreqX
48	fBodyAccMeanFreqY
49	fBodyAccMeanFreqZ
50	fBodyAccJerkMeanX
51	fBodyAccJerkMeanY
52	fBodyAccJerkMeanZ
53	fBodyAccJerkStdX
54	fBodyAccJerkStdY
55	fBodyAccJerkStdZ
56	fBodyAccJerkMeanFreqX
57	fBodyAccJerkMeanFreqY
58	fBodyAccJerkMeanFreqZ
59	fBodyGyroMeanX
60	fBodyGyroMeanY
61	fBodyGyroMeanZ
62	fBodyGyroStdX
63	fBodyGyroStdY
64	fBodyGyroStdZ
65	fBodyGyroMeanFreqX
66	fBodyGyroMeanFreqY
67	fBodyGyroMeanFreqZ
68	fBodyAccMagMean
69	fBodyAccMagStd
70	fBodyAccMagMeanFreq
71	fBodyBodyAccJerkMagMean
72	fBodyBodyAccJerkMagStd
73	fBodyBodyAccJerkMagMeanFreq
74	fBodyBodyGyroMagMean
75	fBodyBodyGyroMagStd
76	fBodyBodyGyroMagMeanFreq
77	fBodyBodyGyroJerkMagMean
78	fBodyBodyGyroJerkMagStd
79	fBodyBodyGyroJerkMagMeanFreq
