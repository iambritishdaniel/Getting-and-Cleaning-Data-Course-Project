Getting and Cleaning Data Course Project
========================================

This repository contains the solution for the course project for the Coursera
course "Getting and Cleaning Data".

The project utilizes the Human Activity Recognition Using Smartphones Data Set,
collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and 
Luca Oneto.

A description of the dataset can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used in this project was obtained in zipped form from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis.R script contains all commands necessary to read the input 
files and create two tidy data files: `tidy_data.txt` and `tidy_data_means.txt`

The script assumes the input files are present in a `data` directory within the
current working directory. A check is made for the presence of the files and the
script will exit with an error if any of the required files are not found.

The script performs the following simplified steps:
 1. Read input files
 2. Merge data into a single data set
 3. Convert column names to a more readable and self-explanatory format
 4. Remove unwanted columns - leaving only the mean and standard deviation 
    observations.
 5. Write the resultant data set to `tidy_data.txt`
 6. Calculate the averages of each observation grouped by subject and activity
 7. Write this new data set to `tidy_data_means.txt`
 
Please refer to `run_analysis.R` for a more detailed explanation of each step
performed.

Please refer to `CodeBook.md` for detailed information of the resulting data 
sets.
