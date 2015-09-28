## Course "Getting and Cleaning Data"

# Unzipped https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
dataDir <- "UCI HAR Dataset"


# get the files name  for further processing
getDataFiles <- function () {
    list(
        activities = paste(dataDir, "activity_labels.txt", sep = "/"),
        features  = paste(dataDir,"features.txt", sep = "/"),
        subject.test   = paste(dataDir,"test", "subject_test.txt", sep = "/"),
        subject.train  = paste(dataDir,"train", "subject_train.txt", sep = "/"),
        xtest     = paste(dataDir,"test", "X_test.txt", sep = "/"),
        xtrain    = paste(dataDir,"train", "X_train.txt", sep = "/"),
        ytest     = paste(dataDir,"test", "y_test.txt", sep = "/"),
        ytrain    = paste(dataDir,"train", "y_train.txt", sep = "/")
    )
}

# Tidy up the data
readAndTidyData <- function(datafiles) {
    # get all the activities ==> Data frame with 2 columns (ID and NAME)
    activities <-
        read.table(datafiles$activities, header = F, col.names = c("id","name"))
    
    # get all the feature names ==> Data frame of 2 columns (ID and NAME)
    features   <-
        read.table(datafiles$features, header = F,col.names = c("id","name"))
    
    # Clean up the name of the features using regular expressions
    replacements <- c(function(x)
        sub("^(t|f)","\\1\\_",x),
        function(x)
            gsub("\\-|\\,","_",x),
        function(x)
            gsub("\\(\\)","",x),
        function(x)
            gsub("\\(","_",x),
        function(x)
            gsub("\\)","",x),
        function(x)
            gsub("([bB])ody[bB]ody","\\1ody",x),
        function(x)
            tolower(x))
    
    for (replacement in replacements) {
        features$name <-
            sapply(features$name, replacement)
    }
    
    # combine test and train subjects into a 1-column data frame
    subject.test <-
        read.table(datafiles$subject.test, header = F, col.names = c("id"))
    subject.train <-
        read.table(datafiles$subject.train, header = F, col.names = c("id"))
    subjects <- rbind(subject.train, subject.test)
    
    
    # get the features actual data per subject (test and training)
    # use the feature labels for column names
    data.x.test  <-
        read.table(datafiles$xtest, header = F, col.names = features$name)
    data.x.train <-
        read.table(datafiles$xtrain, header = F, col.names = features$name)
    data.x <- rbind(data.x.test, data.x.train)
    
    # extract mean and stddev
    data.x <-
        data.x[,grep("\\_mean[^f]|\\_mean$|\\_std",features$name)]
    
    
    # get the activities results per subject (test and train)
    data.y.test  <-
        read.table(datafiles$ytest, header = F, col.names = c("activity"))
    data.y.train <-
        read.table(datafiles$ytrain, header = F, col.names = c("activity"))
    data.y <- rbind(data.y.test, data.y.train)
    
    
    # use activity labels
    data.y$activity <- activities[data.y$activity,]$name
    
    # combine the subjects, data readings and activity labels
    tmp.df <- cbind(subjects, data.x, data.y)

    # calculate the averages of the data values per subject and activity
    df <-
        aggregate(
            tmp.df[,grep("mean|std",names(tmp.df))],
            by = list(id = tmp.df$id,
                      activity = tmp.df$activity),
            FUN = "mean"
        )
    
    # order the rows by subject
    df[order(df$id),]
}



datafiles <- getDataFiles()
df <- readAndTidyData(datafiles)
#write.table(df, row.names = F, file = "UCI_HAR_Dataset_mean_std_Tidy.csv", sep = ",")
write.table(df, row.names = F, file = "UCI_HAR_Dataset_mean_std_Tidy.txt")
