Getting and Cleaning Data Final Project
========================

The run_analysis.R script processes the raw data from "Human Activity Recognition Using Smartphones Dataset Version 1.0" and produces a cleaned data set which can be used in further analyses. 

The data was collected from a group of experiments with 30 people between the ages of 19-48. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using the accelerometer and gyroscpe in the smartphone, the 3-axial liner acceleration and 3-axial angular velocity was recorded at a constant rate of 50Hz. The experiments were video-taped and the data was labelled manually. The data was randomly seperated, with 70% used for generating the training data and 30% for the test data.

Requirements of the 'run_analysis.R' script:
============================================
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The Raw Data Includes:
======================
- 'features.txt': List of all features.

- 'activity_labels.txt': List of class labels and their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': ID's of subjects in the training data

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': ID's of subjects in the training data

The data can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

How the Script Works:
====================

- loads necessary library (plyr)

- reads the raw files into r

- binds together the raw files

- adds descriptive label names

- uses grep to find all columns with mean() and std() 

- puts all mean() and std() columns into a new data frame along with the activity and subject columns

- cleans up the column labels of the new data frame

- finds the mean for every variable and subject in the new data frame

- saves the new data frame as 'tidy_data.txt'

Full explaination of 'tidy_data.txt' can be found in the CodeBook.md file. 

License:
=========
Use of the 'run_analysis.R' script is free for all users.

Use of the resulting dataset 'tidy_data.txt' in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the author for its use or misuse. Any commercial use is prohibited.
