## Getting and Cleaning Data - Course Project

This repo was created for the Coursera [Getting and Cleaning Data](https://www.coursera.org/course/getdata) .

It contains 4 files:
  - [README.md](https://www.coursera.org/course/getdata) : Basic description of the assignement and the run_analysis.R script
  - [run_analysis.R](https://www.coursera.org/course/getdata) : The R script used to generate the tidy data set
  - [result.txt](https://www.coursera.org/course/getdata) : The tidy data set itself
  - [Codebook](https://www.coursera.org/course/getdata) : Description of the data set


### Description of the run_analysis.R script

Prerequisites: the UCI HAR Dataset is available in the Workspace. Alternatively, it can be downloaded and unzipped using the script from lines 5-9 (uncommented).

  - Initially all data required for the analysis are read to the memory using the read.table function
  - The data frame data_features contains all features (column names). Because only the variables containing Std and Mean are needed, copy them (V1 - the column number, V2 - variable name) to a new data frame - featuresToKeep
  - The feature names in featuresToKeep are modified to be a bit more user friendly
  - Next we remove all non-required columns from dataXTest/Train
  - DataYTrain + Test are modified, so instead of activity number an activity description is used
  - The activity column (dataYTrain / Test) is added to the dataXTest/Train and renamed to "activity"
  - The subject column (dataSubjectTest / Train) is added to the dataXTest/Train and renamed to "subject"
  - The dataXTrain is merged with dataYTrain into dataX and sorted
  - All the means are computed and stored in a new data frame resultDF (grouped by subject and activity)
  - The results are stored to a file "result.txt"

Used variables:
  - data_features: contains the feature names
  - featuresToKeep: only the required features
  - dataXTrain: Training data
  - dataXTest: Test data
  - dataYTest: activity description for the Test
  - dataYTrain: activity description for the Train
  - dataSubjectTest: contains the subject for Test
  - dataSubjectTrain: contains the subject for Train
  - dataX: dataframe containing joined data (X,Y/Train/Test, subject)
  - resultDF: means calculated for dataX
