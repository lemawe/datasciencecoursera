---
title: "Getting and Cleaning Data Course Project CodeBook"
output: html_document
---

* The site where the data was obtained:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones     
The data for the project:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   
* The run_analysis.R script performs the following steps to clean the data:   
 1. Read the files *X_train.txt* and *X_test.txt* from the "./UCI HAR Dataset/train" folder and store them in *trainData*, *testData* dataframe variables respectively.
 2. Merge the two data frame into one data set object *dataset*
 3. Read the file *features.txt* into *features* and set the columns names of the data set created precedently.  
 4. Convert the data frame into a dplyr data frame and define a search pattern that  will be used to filter only the columns we want to keep, then filter the data set into a new one *data_filtered*.  
 4. Read the files *y_train.txt* and *y_test.txt*  and store them in *y_train*, *y_test* dataframe variables respectively and merge them into one data frame *yset*.  
 5. Read the file *labesl.txt* into *labels*, then bind these labels to the *yset* data frame to have the corresponding labels of the numbers.   
 6.  Read the files *subject_train.txt* and *subject_test.txt*  and store them in *subject_train*, *subject_test* dataframe variables respectively and merge them into one data frame *subject_data*.   
 7. Combine the *subject_data* and *data_filtered* by column to get a new cleaned 10299x68 data frame. Properly name the first two columns, "subject" and "activity".  
 
 8. Finally, generate a second independent tidy data set with the average of each measurement for each activity and each subject.
 9. Write the *average_data* out to "tiny_data.txt" file in current working directory. 

Subject 1
  The subject who records the data
        01 .Subject 1
        02 .Subject 2
        03 .Subject 3
        04 .Subject 4
        05 .Subject 5
        06 .Subject 6
        07 .Subject 7
        08 .Subject 8
        09 .Subject 9
        10 .Subject 10
        11 .Subject 11
        12 .Subject 12
        13 .Subject 13
        14 .Subject 14
        15 .Subject 15
        16 .Subject 16
        17 .Subject 17
        18 .Subject 18
        19 .Subject 19
        20 .Subject 20
        21 .Subject 21
        22 .Subject 22
        23 .Subject 23
        24 .Subject 24
        25 .Subject 25
        26 .Subject 26
        27 .Subject 27
        28 .Subject 28
        29 .Subject 29
        30 .Subject 30

Activity  2
  The name of the activty when the corresponding data was recorded.
          1 WALKING
          2 WALKING_UPSTAIRS
          3 WALKING_DOWNSTAIR
          4 SITTING
          5 STANDING
          6 LAYING

        

