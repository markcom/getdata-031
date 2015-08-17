## Getting and Cleaning Data - Course Project

This repo was created for the Coursera [Getting and Cleaning Data](https://www.coursera.org/course/getdata) .

It contains 4 files:
  - [README.md](https://github.com/markcom/getdata-031/blob/master/README.md) : Basic description of the assignement and the run_analysis.R script
  - [run_analysis.R](https://github.com/markcom/getdata-031/blob/master/run_analysis.R) : The R script used to generate the tidy data set
  - [result.txt](https://github.com/markcom/getdata-031/blob/master/result.txt) : The tidy data set itself
  - [Codebook](https://github.com/markcom/getdata-031/blob/master/CodeBook) : Description of the data set


### Description of the run_analysis.R script

Prerequisites: the UCI HAR Dataset is available in the Workspace. Alternatively, it can be downloaded and unzipped using the script from lines 5-9 (uncommented).

  - Initially all data required for the analysis are read to the memory using the read.table function
  - All Test and Training data are merged (dataX, dataSubject, dataY)
  - The column names of the dataX data frame are modified according to the features - renamed, removed all but "std" & "mean"
  - The column names of the dataX data frame further changed to "nicer" names
  - activity number in dataY replaced by activity name
  - activities(dataY) merged with the dataX and renamed
  - subject(dataSubject) merged with the dataX and renamed
  - Mean calculated for the dataX (grouped by subject & activity) and stored in a new tidy dataframe resultDF
  - resultDF saved to a "result.txt"

Used variables / data:
  - data_features: contains all the feature names
  - dataXTrain: Training data
  - dataXTest: Test data
  - dataX: dataXTest merged with dataXTrain
  - dataYTest: activity description for the Test
  - dataYTrain: activity description for the Train
  - dataY: dataYTest merged with dataYTrain
  - dataSubjectTest: contains the subject for Test
  - dataSubjectTrain: contains the subject for Train
  - dataSubject: dataSubjectTest merged with dataSubjectTrain
  - resultDF: means calculated for dataX stored in a dataframe
  
  - currentDir: Actual directory
  - dataDir: root directory of the UCI HAR Dataset
  - featuresToKeep: vector of columns, which are to be kept
  
