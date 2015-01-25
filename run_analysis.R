library(dplyr)

train = read.table("UCI HAR Dataset/train/X_train.txt")
test = read.table("UCI HAR Dataset/test//X_test.txt")
#Merge the two data tables into one
dataset = rbind(test,train)
#read the features file
features = read.table("UCI HAR Dataset/features.txt")
colnames(dataset) = features$V2
#Convert the data frame into a dplyr data frame
mydata = tbl_df(dataset)
#Define the search patterns to be use to filter the colums and filter the columns
patterns= c("\\<std\\>","\\<mean\\>")
data_filtered = mydata[,grep(paste(patterns,collapse = "|"), colnames(mydata))]
#Read the labels files
labels = read.table("UCI HAR Dataset/activity_labels.txt")
y_train = read.table("UCI HAR Dataset/train/y_train.txt")
y_test = read.table("UCI HAR Dataset//test//y_test.txt")
yset= rbind(y_test,y_train)
#Insert a column to link the label number to his corresponding name
yset=mutate (yset, activity = labels[V1,2])
#Remove the first column to keep just the label column
yset=yset[-1]
#Add the label column to the dataset
data_filtered=cbind(yset,data_filtered)
#read the subject data files and bind them
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
subject_data = rbind(subject_test,subject_train)
data_filtered = cbind(data_filtered,subject_data)
colnames(data_filtered)[68] = "subject"
#create the new dataset for the grouping and average
data_grouping = group_by(data_filtered,subject,activity)
average_data=summarise_each(tbl = data_grouping,funs(mean))
write.table(x = average_data,file = "tidy_data.txt",row.names=FALSE,sep = " ")
average_data