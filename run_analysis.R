fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl1, destfile ="./data.zip", method = "curl")
#Download the zip file from the given link.

unzip("data.zip")
#Unzip the file into working directory

features <- read.table("./UCI HAR Dataset/features.txt")
Test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
Train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
#Get contents of features (a list of features) and test/train data (measurements) from original data sets and assign into different dataframes

names(Test_set) <- features$V2 
names(Train_set) <- features$V2
#Rename the variables of assigned dataframes (Test_set and Train_set) with the features listed in the object (features)  

Test_label <- read.table("./UCI HAR Dataset/test/Y_test.txt", col.names ="activity")
Train_label <- read.table("./UCI HAR Dataset/train/Y_train.txt", col.names ="activity")
#Get the activity data of test and train groups (Y_test.txt and Y_train.txt) and assigned into different dataframes 

Test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names ="subjects")
Train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names ="subjects")
#Get the subject ids from test and train groups (subject_test.txt and subject_train.txt) and assigned into different dataframes

Test <- cbind(Test_subject, Test_label, Test_set)
Train <- cbind(Train_subject, Train_label, Train_set)
#Combine the data of subject ids, activities, and associated measurements into one data set (Test and Train) 

dataset <- rbind(Test, Train)
#Combine two data sets (Test and Train) into one dataset

a <- grep("mean\\()|std",names(dataset))
#Extract only the measurements on the mean and standard deviation for each measurement from the object (dataset). 
#First create a logic vector to determine if the variables in the object (dataset) contain "mean()" or "std"  

data <- cbind(dataset[1], dataset[2], dataset[a])
#Combine the column of subject ids andactivities and the columns with the variables containing "mean()" or "std" into one data set (data)  

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
data$activity <- factor(data$activity, levels = activity[,1], labels = activity[,2])
#Get the labels of activity from the data (activity_labels.txt). Assign the variable ("activity") as a factor with the levels matching
#the activity labels.

result <- aggregate(data[,3:68], by = list(data$subjects, data$activity), FUN = mean)
#Aggregate the data in the object (data) with average of each variable for each activity and each subject.

colnames(result)[1:2] <- c("subject_id", "activity")
#Rename the first two columns as "subject_id" and "activity" 

write.table(result, file="tidy_data.txt", row.names = FALSE)
#Output the final data set as a text file (tidy_data.txt)
