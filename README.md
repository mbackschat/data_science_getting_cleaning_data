
# Course Project "Getting and Cleaning Data"

Author: Martin Backschat


## General

This repo contains the script file "run_analysis.R" that...

1. Merges the training and the test sets to create one data set.

1. Extracts only the measurements on the mean and standard deviation for each measurement. 

1. Uses descriptive activity names to name the activities in the data set

1. Appropriately labels the data set with descriptive variable names. 

1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Run the script in R using

```{r}
source("run_analysis.R")
```

## Output

It produces a file called "UCI\_HAR\_Dataset\_mean\_std\_Tidy.txt" which contains the tidy data.

The file has 181 lines:
* 1 header line with variable names
* 180 lines containing  6 observation rows (1 per activity) for all 30 subjects.

Each row contains values for 68 variables.
See the [Codebook.md] for more info.


## How the script works

The script contains two helper functions `getDataFiles` und `readAndTidyData` that basically
do all the work.


* getDataFiles: get the files names for further processing in the folder "UCI HAR Dataset"
    + activity_labels.txt
    + features.txt
    + test/subject_test.txt
    + train/subject_train.txt
    + test/X_test.txt
    + train/X_train.txt
    + test/y_test.txt
    + train/y_train.txt

* readAndTidyData: It tidies up the data using these steps:
    1. get all the activities
    1. get all the feature names
    1. clean up the name of the features using regular expressions
    1. combine test and train subjects
    1 get the features actual data per subject (test and training); use the feature labels for column names
    1. extract mean and stddev
    1. get the activities results per subject (test and train)
    1. descriptive activity names: use activity labels
    1. combine the subjects, data readings and activity labels
    1. calculate the averages of the data values per subject and activity
    1. order the rows by subject

First `getDataFiles()` is called and then `readAndTidyData()`, which produces a data frame
with tidy and aggregated data: the average of each variable for each activity and each subject.
