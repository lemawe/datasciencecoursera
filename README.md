Getting and Cleaning Data Course Project
========================================
This file describes how run_analysis.R script works.
* First, unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
* Make sure the folder "UCI HAR Dataset" and the run_analysis.R script are both in the current working directory.
* Second, use source("run_analysis.R") command in RStudio. 
* Third, you will find one output file generated in the current working directory:
  - tiny_data.txt: it contains a data set with the average of each variable for each activity and each subject.
* Finally, use data <- read.table("tiny_data.txt",header = TRUE) command in RStudio to read the file.