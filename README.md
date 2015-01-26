# cleaning_and_getting_data
Data is downloaded from the following source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip Download datetime: 2015-01-24 14:56:34 CET

It is extracted and following files are used to create the data for analysis:

./UCI HAR Dataset/test/y_test.txt

./UCI HAR Dataset/test/x_test.txt

./UCI HAR Dataset/test/subject_test.txt

./UCI HAR Dataset/train/y_train.txt

./UCI HAR Dataset/train/x_train.txt

./UCI HAR Dataset/train/subject_train.txt

./UCI HAR Dataset/features.txt

./UCI HAR Dataset/activity_labels.txt

Test and traings data are found in x_test and x_train files.

features.txt file contains column names. The colum names used for the final data set are

"tBodyAcc-mean()-X"

"tBodyAcc-mean()-Y"

"tBodyAcc-mean()-Z”

"tBodyAcc-std()-X"

"tBodyAcc-std()-Y"

"tBodyAcc-std()-Z"

"tGravityAcc-mean()-X"

"tGravityAcc-mean()-Y"

"tGravityAcc-mean()-Z"

"tGravityAcc-std()-X"

"tGravityAcc-std()-Y"

"tGravityAcc-std()-Z"

"tBodyAccJerk-mean()-X"

"tBodyAccJerk-mean()-Y"

"tBodyAccJerk-mean()-Z"

"tBodyAccJerk-std()-X"

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"

"tBodyGyro-mean()-X"

"tBodyGyro-mean()-Y"

"tBodyGyro-mean()-Z"

"tBodyGyro-std()-X"

"tBodyGyro-std()-Y"

"tBodyGyro-std()-Z"

"tBodyGyroJerk-mean()-X"

"tBodyGyroJerk-mean()-Y"

"tBodyGyroJerk-mean()-Z"

"tBodyGyroJerk-std()-X"

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z"

"tBodyAccMag-mean()”

"tBodyAccMag-std()”

"tGravityAccMag-mean()"

"tGravityAccMag-std()"

"tBodyAccJerkMag-mean()"

"tBodyAccJerkMag-std()"

"tBodyGyroMag-mean()"

"tBodyGyroMag-std()"

"tBodyGyroJerkMag-mean()"

"tBodyGyroJerkMag-std()"

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y"

"fBodyAcc-mean()-Z"

"fBodyAcc-std()-X"

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z"

"fBodyAcc-meanFreq()-X"

"fBodyAcc-meanFreq()-Y"

"fBodyAcc-meanFreq()-Z"

"fBodyAccJerk-mean()-X"

"fBodyAccJerk-mean()-Y"

"fBodyAccJerk-mean()-Z"

"fBodyAccJerk-std()-X"

"fBodyAccJerk-std()-Y"

"fBodyAccJerk-std()-Z"

"fBodyAccJerk-meanFreq()-X"

"fBodyAccJerk-meanFreq()-Y"

"fBodyAccJerk-meanFreq()-Z"

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y"

"fBodyGyro-mean()-Z"

"fBodyGyro-std()-X"

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"

"fBodyGyro-meanFreq()-X"

"fBodyGyro-meanFreq()-Y"

"fBodyGyro-meanFreq()-Z"

"fBodyAccMag-mean()"

"fBodyAccMag-std()"

"fBodyAccMag-meanFreq()"

"fBodyBodyAccJerkMag-mean()"

"fBodyBodyAccJerkMag-std()"

"fBodyBodyAccJerkMag-meanFreq()"

"fBodyBodyGyroMag-mean()"

"fBodyBodyGyroMag-std()"

"fBodyBodyGyroMag-meanFreq()"

"fBodyBodyGyroJerkMag-mean()"

"fBodyBodyGyroJerkMag-std()"

"fBodyBodyGyroJerkMag-meanFreq()"

The the detailed description of this data can be found in the features.info file. Basically these are 3d readings from the devises measuring activity.

Activities are categorised in 6 categories:

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

Subject numbers (persons using the devises are given only as numbers) in the subject_* files.


