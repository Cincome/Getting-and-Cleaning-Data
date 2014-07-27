Code Book:
=========
In cleaning the raw data, the grep function was used to search for all columns that contained mean() and std().  This data was pulled from the raw data of "Human Activity Recognition Using Smartphones Dataset Version 1.0"

Column Names in 'tidy_data.txt':
================================
"BodyAcc-mean()-X" 
"BodyAcc-mean()-Y" 
"BodyAcc-mean()-Z" 
"GravityAcc-mean()-X" 
"GravityAcc-mean()-Y" 
"GravityAcc-mean()-Z" 
"BodyAccJerk-mean()-X"
"BodyAccJerk-mean()-Y" 
"BodyAccJerk-mean()-Z"
"BodyGyro-mean()-X" 
"BodyGyro-mean()-Y" 
"BodyGyro-mean()-Z" 
"BodyGyroJerk-mean()-X"
"BodyGyroJerk-mean()-Y" 
"BodyGyroJerk-mean()-Z" 
"BodyAccMag-mean()" 
"GravityAccMag-mean()"
"BodyAccJerkMag-mean()"
"BodyGyroMag-mean()"
"BodyGyroJerkMag-mean()"
"BodyAcc-meanFreq()-X" 
"BodyAcc-meanFreq()-Y" 
"BodyAcc-meanFreq()-Z" 
"BodyAccJerk-meanFreq()-X"
"BodyAccJerk-meanFreq()-Y"
"BodyAccJerk-meanFreq()-Z"
"BodyGyro-meanFreq()-X" 
"BodyGyro-meanFreq()-Y" 
"BodyGyro-meanFreq()-Z" 
"BodyAccMag-meanFreq()" 
"BodyBodyAccJerkMag-mean()"
"BodyBodyAccJerkMag-meanFreq()"
"BodyBodyGyroMag-mean()" 
"BodyBodyGyroMag-meanFreq()"
"BodyBodyGyroJerkMag-mean()"
"BodyBodyGyroJerkMag-meanFreq()"
"BodyAcc-std()-X" 
"BodyAcc-std()-Y"
"BodyAcc-std()-Z"
"GravityAcc-std()-X"
"GravityAcc-std()-Y"
"GravityAcc-std()-Z"
"BodyAccJerk-std()-X"
"BodyAccJerk-std()-Y"
"BodyAccJerk-std()-Z"
"BodyGyro-std()-X" 
"BodyGyro-std()-Y"
"BodyGyro-std()-Z"
"BodyGyroJerk-std()-X"
"BodyGyroJerk-std()-Y"
"BodyGyroJerk-std()-Z"
"BodyAccMag-std()" 
"GravityAccMag-std()"
"BodyAccJerkMag-std()"
"BodyGyroMag-std()" 
"BodyGyroJerkMag-std()"
"BodyBodyAccJerkMag-std()"
"BodyBodyGyroMag-std()" 
"BodyBodyGyroJerkMag-std()"

Vector Variables:
=================
mean():mean values of multiple measurements of the original variables. Type: Real number

std(): Standard deviation of multiple measurements of the original variables. Type: Real number

Subject: Identifier, identifying each subject.  Type: Integer Values: 1 : 30

Activity:  Descriptive name of each subject's activity.  Type: Factor Values: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying