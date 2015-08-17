#   The archive with the data can be downloaded first
#   and unzipped (Win 7)
#   Not requited if data in workspace directory

#fileToDownload = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
#tempZip = tempfile()
#download.file(fileToDownload, tempZip, mode="wb")
#unzip(tempZip)
#unlink(tempZip)

##########################################################################

#   Load all data we need to memory
currentDir <- getwd()
dataDir <- file.path(currentDir, "UCI HAR Dataset")

data_features <- read.table(file.path(dataDir, "features.txt"))
dataXTest <- read.table(file.path(dataDir, 
                                  "test", "X_test.txt"))
dataYTest <- read.table(file.path(dataDir, 
                                  "test", "y_test.txt"),
                        colClasses = "character")
dataSubjectTest <- read.table(file.path(dataDir, 
                                        "test", "subject_test.txt"))

dataXTrain <- read.table(file.path(dataDir, 
                                   "train", "X_train.txt"))
dataYTrain <- read.table(file.path(dataDir, 
                                   "train", "y_train.txt"),
                         colClasses = "character")
dataSubjectTrain <- read.table(file.path(dataDir, 
                                         "train", "subject_train.txt"))

#   Merge all the Test and Training datasets
dataX <- rbind(dataXTest, dataXTrain)
dataY <- rbind(dataYTest, dataYTrain)
dataSubject <- rbind(dataSubjectTest, dataSubjectTrain)

#   Rename the columns of the dataX
names(dataX) <- data_features$V2

#   Put the features we want to keep (everything containing "std",
#   "mean") to a new table and sort them
featuresToKeep <- grep("mean", names(dataX))
featuresToKeep <- c(featuresToKeep, grep("std", names(dataX)))
#featuresToKeep <-  c(featuresToKeep, -grep("fBodyBody", names(dataX)))

dataX <- dataX[, featuresToKeep]

#   Modify the column names
names(dataX) <- gsub("Acc", "Acceleration", names(dataX))
names(dataX) <- gsub("Freq", "Frequency", names(dataX))
names(dataX) <- gsub("std", "Std", names(dataX))
names(dataX) <- gsub("mean", "Mean", names(dataX))
names(dataX) <- gsub("-", "", names(dataX))
names(dataX) <- gsub("\\(\\)", "", names(dataX))

#   Replace Actity number with name
dataY$V1[dataY$V1 == "1"] <- "WALKING"
dataY$V1[dataY$V1 == "2"] <- "WALKING_UPSTAIRS"
dataY$V1[dataY$V1 == "3"] <- "WALKING_DOWNSTAIRS"
dataY$V1[dataY$V1 == "4"] <- "SITTING"
dataY$V1[dataY$V1 == "5"] <- "STANDING"
dataY$V1[dataY$V1 == "6"] <- "LAYING"

#   Add Activity column and rename it
dataX <- cbind(dataY, dataX)
colnames(dataX)[1] <- "activity"


#   Add Subject column and rename
dataX <- cbind(dataSubject, dataX)
colnames(dataX)[1] <- "subject"

#   Compute all the means - grouped by subject and activity
#   and sort according to the Subject
resultDF <- aggregate(. ~ subject + activity,data = dataX,FUN = mean)
resultDF <- resultDF[order(resultDF$subject), ]

#   Save the results Dataframe to a file "result.txt"
write.table(resultDF, "result.txt", row.name=FALSE)
