CodeBook for Data Sets Created by `run_analysis.R`
==================================================
Getting and Cleaning Data Course Project
----------------------------------------

`run_analysis.R` creates two data sets, `tidy_data.txt` and 
`tidy_data_means.txt` derived from the Human Activity Recognition Using 
Smartphones Data Set (see `README.md`).

`tidy_data.txt` differs from the original data set in the following ways:
 - test and training data from the original are merged into a single file: this
 includes `X_train.txt`, `y_train.txt`, `subject_train.txt`, `X_test.txt`, 
 `y_test.txt`, and `subject_test.txt`.
 - columns in the derived data set have been assigned labels based on the 
 `features.txt` file in the original, modified to remove characters illegal in R,
  and to make them more readable and self-explanatory.
 - activities have been given a descriptive label instead of a numeric value.
 - only the columns containing mean and standard deviation observations have
 been kept in the derived data set.

The data set contains 10299 rows of 68 columns. The columns are as follows:

 1. `subject`: numeric subject identifier assigned in the original data set
 1. `activity`: factor of activity types {laying, sitting, standing, walking, walking_downstairs, walking_upstairs}
 1. `time_body_acceleration_mean_xaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_mean_yaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_mean_zaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_mean_xaxis`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_mean_yaxis`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_mean_zaxis`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_mean_xaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_mean_yaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_mean_zaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_mean_xaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_mean_yaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_mean_zaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_mean_xaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_mean_yaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_mean_zaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `time_body_acceleration_magnitude_mean`: numeric ranging from -1 to 1
 1. `time_body_acceleration_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_magnitude_mean`: numeric ranging from -1 to 1
 1. `time_gravity_acceleration_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_magnitude_mean`: numeric ranging from -1 to 1
 1. `time_body_acceleration_jerk_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_magnitude_mean`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_magnitude_mean`: numeric ranging from -1 to 1
 1. `time_body_gyroscope_jerk_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_mean_xaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_mean_yaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_mean_zaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_jerk_mean_xaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_jerk_mean_yaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_jerk_mean_zaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_jerk_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_jerk_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_jerk_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `frequency_body_gyroscope_mean_xaxis`: numeric ranging from -1 to 1
 1. `frequency_body_gyroscope_mean_yaxis`: numeric ranging from -1 to 1
 1. `frequency_body_gyroscope_mean_zaxis`: numeric ranging from -1 to 1
 1. `frequency_body_gyroscope_standard_deviation_xaxis`: numeric ranging from -1 to 1
 1. `frequency_body_gyroscope_standard_deviation_yaxis`: numeric ranging from -1 to 1
 1. `frequency_body_gyroscope_standard_deviation_zaxis`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_magnitude_mean`: numeric ranging from -1 to 1
 1. `frequency_body_acceleration_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `frequency_body_body_acceleration_jerk_magnitude_mean`: numeric ranging from -1 to 1
 1. `frequency_body_body_acceleration_jerk_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `frequency_body_body_gyroscope_magnitude_mean`: numeric ranging from -1 to 1
 1. `frequency_body_body_gyroscope_magnitude_standard_deviation`: numeric ranging from -1 to 1
 1. `frequency_body_body_gyroscope_jerk_magnitude_mean`: numeric ranging from -1 to 1
 1. `frequency_body_body_gyroscope_jerk_magnitude_standard_deviation`: numeric ranging from -1 to 1

`tidy_data_means.txt` builds on `tidy_data.txt` but contains the average (mean)
for each of the observations grouped by subject identifier and activity.

The columns in this file mirror those in `tidy_data.txt`, but include the 
additional "mean_" prefix on the column labels to differentiate between the 
two data sets. The data set is 180 rows of 68 columns:

 1. `mean_time_body_acceleration_mean_xaxis`                                 
 1. `mean_time_body_acceleration_mean_yaxis`                                 
 1. `mean_time_body_acceleration_mean_zaxis`                                 
 1. `mean_time_body_acceleration_standard_deviation_xaxis`                   
 1. `mean_time_body_acceleration_standard_deviation_yaxis`                   
 1. `mean_time_body_acceleration_standard_deviation_zaxis`                   
 1. `mean_time_gravity_acceleration_mean_xaxis`                              
 1. `mean_time_gravity_acceleration_mean_yaxis`                              
 1. `mean_time_gravity_acceleration_mean_zaxis`                              
 1. `mean_time_gravity_acceleration_standard_deviation_xaxis`                
 1. `mean_time_gravity_acceleration_standard_deviation_yaxis`                
 1. `mean_time_gravity_acceleration_standard_deviation_zaxis`                
 1. `mean_time_body_acceleration_jerk_mean_xaxis`                            
 1. `mean_time_body_acceleration_jerk_mean_yaxis`                            
 1. `mean_time_body_acceleration_jerk_mean_zaxis`                            
 1. `mean_time_body_acceleration_jerk_standard_deviation_xaxis`              
 1. `mean_time_body_acceleration_jerk_standard_deviation_yaxis`              
 1. `mean_time_body_acceleration_jerk_standard_deviation_zaxis`              
 1. `mean_time_body_gyroscope_mean_xaxis`                                    
 1. `mean_time_body_gyroscope_mean_yaxis`                                    
 1. `mean_time_body_gyroscope_mean_zaxis`                                    
 1. `mean_time_body_gyroscope_standard_deviation_xaxis`                      
 1. `mean_time_body_gyroscope_standard_deviation_yaxis`                      
 1. `mean_time_body_gyroscope_standard_deviation_zaxis`                      
 1. `mean_time_body_gyroscope_jerk_mean_xaxis`                               
 1. `mean_time_body_gyroscope_jerk_mean_yaxis`                               
 1. `mean_time_body_gyroscope_jerk_mean_zaxis`                               
 1. `mean_time_body_gyroscope_jerk_standard_deviation_xaxis`                 
 1. `mean_time_body_gyroscope_jerk_standard_deviation_yaxis`                 
 1. `mean_time_body_gyroscope_jerk_standard_deviation_zaxis`                 
 1. `mean_time_body_acceleration_magnitude_mean`                             
 1. `mean_time_body_acceleration_magnitude_standard_deviation`               
 1. `mean_time_gravity_acceleration_magnitude_mean`                          
 1. `mean_time_gravity_acceleration_magnitude_standard_deviation`            
 1. `mean_time_body_acceleration_jerk_magnitude_mean`                        
 1. `mean_time_body_acceleration_jerk_magnitude_standard_deviation`          
 1. `mean_time_body_gyroscope_magnitude_mean`                                
 1. `mean_time_body_gyroscope_magnitude_standard_deviation`                  
 1. `mean_time_body_gyroscope_jerk_magnitude_mean`                           
 1. `mean_time_body_gyroscope_jerk_magnitude_standard_deviation`             
 1. `mean_frequency_body_acceleration_mean_xaxis`                            
 1. `mean_frequency_body_acceleration_mean_yaxis`                            
 1. `mean_frequency_body_acceleration_mean_zaxis`                            
 1. `mean_frequency_body_acceleration_standard_deviation_xaxis`              
 1. `mean_frequency_body_acceleration_standard_deviation_yaxis`              
 1. `mean_frequency_body_acceleration_standard_deviation_zaxis`              
 1. `mean_frequency_body_acceleration_jerk_mean_xaxis`                       
 1. `mean_frequency_body_acceleration_jerk_mean_yaxis`                       
 1. `mean_frequency_body_acceleration_jerk_mean_zaxis`                       
 1. `mean_frequency_body_acceleration_jerk_standard_deviation_xaxis`         
 1. `mean_frequency_body_acceleration_jerk_standard_deviation_yaxis`         
 1. `mean_frequency_body_acceleration_jerk_standard_deviation_zaxis`         
 1. `mean_frequency_body_gyroscope_mean_xaxis`                               
 1. `mean_frequency_body_gyroscope_mean_yaxis`                               
 1. `mean_frequency_body_gyroscope_mean_zaxis`                               
 1. `mean_frequency_body_gyroscope_standard_deviation_xaxis`                 
 1. `mean_frequency_body_gyroscope_standard_deviation_yaxis`                 
 1. `mean_frequency_body_gyroscope_standard_deviation_zaxis`                 
 1. `mean_frequency_body_acceleration_magnitude_mean`                        
 1. `mean_frequency_body_acceleration_magnitude_standard_deviation`          
 1. `mean_frequency_body_body_acceleration_jerk_magnitude_mean`              
 1. `mean_frequency_body_body_acceleration_jerk_magnitude_standard_deviation`
 1. `mean_frequency_body_body_gyroscope_magnitude_mean`                      
 1. `mean_frequency_body_body_gyroscope_magnitude_standard_deviation`        
 1. `mean_frequency_body_body_gyroscope_jerk_magnitude_mean`                 
 1. `mean_frequency_body_body_gyroscope_jerk_magnitude_standard_deviation` 
