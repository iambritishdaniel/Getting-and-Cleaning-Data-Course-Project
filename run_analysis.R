# **************************************************************************** #
#                                                                              #
#      Script: run_anlysis.R                                                   #
# Description: Script created for Coursera "Getting and Cleaning Data"         #
#              course project. Please refer to README.md and CodeBook.md       #
#              files in repository for further information.                    #
#     Version: 1.0                                                             #
#        Date: 2012-05-18                                                      #
#      Author: Daniel Richards <iambritishdaniel@gmail.com>                    #
#  Repository: http://git.io/WZw1gA                                            #
#                                                                              #
# **************************************************************************** #

# check for presence of required data files
# stop with error if one of the files is not found
if (!file.exists("./data/activity_labels.txt")) {
        stop("Error! File activity_lables.txt not found. Cannot continue.")
}
if (!file.exists("./data/features.txt")) {
        stop("Error! File features.txt not found. Cannot continue.")
}
if (!file.exists("./data/test/subject_test.txt")) {
        stop("Error! File test/subject_test.txt not found. Cannot continue.")
}
if (!file.exists("./data/test/X_test.txt")) {
        stop("Error! File test/X_test.txt not found. Cannot continue.")
}
if (!file.exists("./data/test/y_test.txt")) {
        stop("Error! File test/y_test.txt not found. Cannot continue.")
}
if (!file.exists("./data/train/subject_train.txt")) {
        stop("Error! File train/subject_train.txt not found. Cannot continue.")
}
if (!file.exists("./data/train/X_train.txt")) {
        stop("Error! File train/X_train.txt not found. Cannot continue.")
}
if (!file.exists("./data/train/y_train.txt")) {
        stop("Error! File train/y_train.txt not found. Cannot continue.")
}


# read activity labels
activities <- read.table("./data/activity_labels.txt")
# assign column names
names(activities) <- c("activity_id", "activity")

# read features
features <- read.table("./data/features.txt")
# assign column names
names(features) <- c("feature_id", "feature")

# read training datasets
train_x <- read.table("./data/train/X_train.txt")
train_y <- read.table("./data/train/y_train.txt")
train_subject <- read.table("./data/train/subject_train.txt")

# read test datasets
test_x <- read.table("./data/test/X_test.txt")
test_y <- read.table("./data/test/y_test.txt")
test_subject <- read.table("./data/test/subject_test.txt")

# merge training and test datasets
x <- rbind(train_x, test_x)
y <- rbind(train_y, test_y)
names(y) <- "activity"
subject <- rbind(train_subject, test_subject)
names(subject) <- "subject"

# replace activity numbers with more meaningful descriptions
y[, 1] <- tolower(activities[y[, 1], 2])

# identify the mean and standard deviation features
# assign their column numbers to a vector
features_to_keep <- grep("-mean\\(\\)|-std\\(\\)", features$feature)

# create a new data set with only the features we want to keep
x_mean_and_std <- x[, features_to_keep]

# convert feature labels to more meaningful names
# note: undescores are used to separate words to make the names more readable
# remove parentheses
feature_names <- gsub("\\(|\\)", "", features[features_to_keep,]$feature)

# add "axis" after X, Y, and Z to be more descriptive
feature_names <- gsub("-(X|Y|Z)", "\\1axis", feature_names)

# replace hyphen with underscore
feature_names <- gsub("-", "_", feature_names)

# add underscore in front of each word starting with an uppercase letter
feature_names <- gsub('([[:upper:]])', '_\\1', feature_names)

# change to all lowercase
feature_names <- tolower(feature_names)

# replace "t" with time and "f" with frequency to denote the different
# measurement domains
feature_names <- gsub("^t_", "time_", feature_names)
feature_names <- gsub("^f_", "frequency_", feature_names)

# replace "gyro" with more descriptive "gyroscope"
feature_names <- gsub("gyro", "gyroscope", feature_names)

# replace "acc" with more descriptive "acceleration"
feature_names <- gsub("acc", "acceleration", feature_names)

# replace "mag" with more descriptive "magnitude"
feature_names <- gsub("mag", "magnitude", feature_names)

# replace "std" with "standard_deviation"
feature_names <- gsub("std", "standard_deviation", feature_names)


# add feature names to the new data set
names(x_mean_and_std) <- feature_names


# bind the subject and activity columns to the dataset
x_mean_and_std <- cbind(subject, y, x_mean_and_std)


# finished with initial tidy data set: write to file
# row.names=FALSE will suppress the output of the row number in the output file
write.table(x_mean_and_std, "./tidy_data.txt", row.names=FALSE)


# now calculate averages of variables by subject and activity
means_by_subject_and_activity <- 
        aggregate(x_mean_and_std[3:dim(x_mean_and_std)[2]], 
        list(x_mean_and_std$subject, x_mean_and_std$activity),
        mean)


# rename the columns - append "mean_" to the beginning to differentiate the
# values in this new data set
old_names <- names(means_by_subject_and_activity)[3:
                                        dim(means_by_subject_and_activity)[2]]
new_names <- paste("mean_", old_names, sep="")
names(means_by_subject_and_activity) <- c("subject", "activity", new_names)


# write new data set to file
write.table(means_by_subject_and_activity, "./tidy_data_means.txt", row.names=FALSE)