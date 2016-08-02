# Getting and Cleaning Data: Peer Graded Assignment

The contents of this repository intend for a R user to tidy up a dataset (A dataset of Human Activity Recognition Using Samsung Smartphones) from the peer graded assignment in "Getting and Cleaning Data" Course. This repo contains three files:
  - 'README.md' 
  - 'run_analysis.R': The R scripts with explanations to run the entire analysis (cleaning up the dataset).
  - 'codebook.md': A code book describing all variables, data,and works (scripts) I performed to clean up the data.   

After running the 'run_analysis.R' with R, a user can get a 'tidy_data.txt' in his/her R working directory 
The Raw dataset is downloaded contains the R script run_analysis.R to tidy Human Activity Recognition Using Smartphones Data Set. At the beginning script downloads the data set saving it as har.zip and unzips it into 'UCI HAR Dataset' directory while har.zip won't be downloaded if it exists already. After the loading and transforming data set script writes three tidy data sets:

The aggregate of test and train data sets, har-aggregate.txt.
The data frame with measurements of means and standard deviations, har-only-mean-std.txt.
The independent tidy data set, har-independent.txt.
Running the script in a command line:

$ Rscript run_analysis.R

or for Linux, MacOS:

$ ./run_analysis.R

Executing the script from the R console:

> source("run_analysis.R")
from raw dataset to a tidy one.
For this work it is provided:
======================================
- 'README.md' 
- 'run_analysis.R': The R scripts with explanations to run the entire analysis (cleaning up the dataset).
- 'codebook.md': A code book describing all variables, data,and works (scripts) I performed to clean up the data.   
