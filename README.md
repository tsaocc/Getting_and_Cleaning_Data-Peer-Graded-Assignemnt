# Getting and Cleaning Data: Peer Graded Assignment

The contents of this repository intend for a R user to tidy up a dataset (A dataset of Human Activity Recognition Using Samsung Smartphones) from the peer graded assignment in "Getting and Cleaning Data" Course. This repo contains three files:
  - 'README.md' 
  - 'run_analysis.R': The R scripts with explanations to run the entire analysis (cleaning up the dataset).
  - 'codebook.md': A code book describing all variables, data,and works (scripts) I performed to clean up the data.   

By executing the script in the repo (run_analysis.R) using R, a user can firstly downlaod the original raw dataset from UCI, unzip the dataset, and then merge and transform data sets into a tidy data set ('tidy_data.txt') in his/her R working directory. The link of the original raw dataset from UCI is as the following:     
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description of the original raw dataset can be found in this link.   
 
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
 
The script in this repo (run_analysis.R) can perform the following steps and functions:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

