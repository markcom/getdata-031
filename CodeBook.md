## Dataset description 

### Measurements identification

 - subject: Integer ID of the subject
 - activity: String description of the activity

### Means of the measurements
Values (floating point numbers) contain the means over subject and activity over time

| Parameter                    | Description                                         | Axis |
| ---------------------------- | --------------------------------------------------- | ---- |
| tBodyAccelerationMeanX       | Body acceleration mean                              | X    |
| tBodyAccelerationMeanY       | Body acceleration mean                              | Y    |
| tBodyAccelerationMeanZ       | Body acceleration mean                              | Z    |
| tGravityAccelerationMeanX    | Gravity acceleration mean                           | X    |
| tGravityAccelerationMeanY    | Gravity acceleration mean                           | Y    |
| tGravityAccelerationMeanZ    | Gravity acceleration mean                           | Z    |
| tBodyAccelerationJerkMeanX   | Body acceleraton Jerk mean                          | X    |
| tBodyAccelerationJerkMeanY   | Body acceleraton Jerk mean                          | Y    |
| tBodyAccelerationJerkMeanZ   | Body acceleraton Jerk mean                          | Z    |
| tBodyGyroMeanX               | Body gyro  mean                                     | X    |
| tBodyGyroMeanY               | Body gyro  mean                                     | Y    |
| tBodyGyroMeanZ               | Body gyro  mean                                     | Z    |
| tBodyGyroJerkMeanX           | Body gyro  jerk mean                                | X    |
| tBodyGyroJerkMeanY           | Body gyro  jerk mean                                | Y    |
| tBodyGyroJerkMeanZ           | Body gyro  jerk mean                                | Z    |
| tBodyAccelerationStdX        | Body acceleration standart deviation                | X    |
| tBodyAccelerationStdY        | Body acceleration standart deviation                | Y    |
| tBodyAccelerationStdZ        | Body acceleration standart deviation                | Z    |
| tGravityAccelerationStdX     | Gravity acceleration standart deviation             | X    |
| tGravityAccelerationStdY     | Gravity acceleration standart deviation             | Y    |
| tGravityAccelerationStdZ     | Gravity acceleration standart deviation             | Z    |
| tBodyAccelerationJerkStdX    | Body acceleraton Jerk standart deviation            | X    |
| tBodyAccelerationJerkStdY    | Body acceleraton Jerk standart deviation            | Y    |
| tBodyAccelerationJerkStdZ    | Body acceleraton Jerk standart deviation            | Z    |
| tBodyGyroStdX                | Body gyro  standart deviation                       | X    |
| tBodyGyroStdY                | Body gyro  standart deviation                       | Y    |
| tBodyGyroStdZ                | Body gyro  standart deviation                       | Z    |
| tBodyGyroJerkStdX            | Body gyro  jerk standart deviation                  | X    |
| tBodyGyroJerkStdY            | Body gyro  jerk standart deviation                  | Y    |
| tBodyGyroJerkStdZ            | Body gyro  jerk standart deviation                  | Z    |
|                              |                                                     |      |
| tBodyAccelerationMagStd      | Body acceleration magnitude standart deviation      |      |
| tGravityAccelerationMagStd   | Gravity acceleration magnitude standart deviation   |      |
| tBodyAccelerationJerkMagStd  | Body acceleration jerk magnitude standart deviation |      |
| tBodyGyroMagStd              | Body gyro magnitude standart deviation              |      |
| tBodyGyroJerkMagStd          | Body gyro jerk magnitude standart deviation         |      |
| tBodyAccelerationMagMean     | Body acceleration magnitude mean                    |      |
| tGravityAccelerationMagMean  | Gravity acceleration magnitude mean                 |      |
| tBodyAccelerationJerkMagMean | Body acceleration jerk magnitude mean               |      |
| tBodyGyroMagMean             | Body gyro magnitude mean                            |      |
| tBodyGyroJerkMagMean         | Body gyro jerk magnitude mean                       |      |


### Means of the measurements
#### Fast Fourier Transform applied (floating point numbers)
Values (floating point numbers) contain the means of Fast Fourier Transforms over data collected per subject and activity

| Parameter                                 | Description                                         | Axis |
| ----------------------------------------- | --------------------------------------------------- | ---- |
| fBodyAccelerationMeanX                    | Body acceleration mean                              | X    |
| fBodyAccelerationMeanY                    | Body acceleration mean                              | Y    |
| fBodyAccelerationMeanZ                    | Body acceleration mean                              | Z    |
| fBodyAccelerationMeanFrequencyX           | Body acceleration mean frequency                    | X    |
| fBodyAccelerationMeanFrequencyY           | Body acceleration mean frequency                    | Y    |
| fBodyAccelerationMeanFrequencyZ           | Body acceleration mean frequency                    | Z    |
| fBodyAccelerationJerkMeanX                | Body acceleraton Jerk mean                          | X    |
| fBodyAccelerationJerkMeanY                | Body acceleraton Jerk mean                          | Y    |
| fBodyAccelerationJerkMeanZ                | Body acceleraton Jerk mean                          | Z    |
| fBodyAccelerationJerkMeanFrequencyX       | Body acceleraton Jerk mean frequency                | X    |
| fBodyAccelerationJerkMeanFrequencyY       | Body acceleraton Jerk mean frequency                | Y    |
| fBodyAccelerationJerkMeanFrequencyZ       | Body acceleraton Jerk mean frequency                | Z    |
| fBodyGyroMeanX                            | Body gyro  jerk mean                                | X    |
| fBodyGyroMeanY                            | Body gyro  jerk mean                                | Y    |
| fBodyGyroMeanZZ                           | Body gyro  jerk mean                                | Z    |
| fBodyGyroMeanFrequencyX                   | Body gyro  jerk mean frequency                      | X    |
| fBodyGyroMeanFrequencyY                   | Body gyro  jerk mean frequency                      | Y    |
| fBodyGyroMeanFrequencyZ                   | Body gyro  jerk mean frequency                      | Z    |
| fBodyAccelerationStdX                     | Body acceleration standart deviation                | X    |
| fBodyAccelerationStdY                     | Body acceleration standart deviation                | Y    |
| fBodyAccelerationStdZ                     | Body acceleration standart deviation                | Z    |
| fBodyAccelerationJerkStdX                 | Body acceleraton Jerk standart deviation            | X    |
| fBodyAccelerationJerkStdY                 | Body acceleraton Jerk standart deviation            | Y    |
| fBodyAccelerationJerkStdZ                 | Body acceleraton Jerk standart deviation            | Z    |
| fBodyGyroStdX                             | Body gyro  standart deviation                       | X    |
| fBodyGyroStdY                             | Body gyro  standart deviation                       | Y    |
| fBodyGyroStdZ                             | Body gyro  standart deviation                       | Z    |
|                                           |                                                     |      |
| fBodyAccelerationMagMean                  | Body acceleration magnitude mean                    |      |
| fBodyAccelerationMagMeanFrequency         | Body acceleration jerk magnitude mean frequency     |      |
| fBodyBodyAccelerationJerkMagMean          | Body acceleration jerk magnitude mean               |      |
| fBodyBodyAccelerationJerkMagMeanFrequency | Body acceleration jerk magnitude mean fraquency     |      |
| fBodyBodyGyroMagMean                      | Body gyro magnitude mean                            |      |
| fBodyBodyGyroMagMeanFrequency             | Body gyro jerk magnitude mean frequency             |      |
| fBodyBodyGyroJerkMagMean                  | Body gyro jerk magnitude mean                       |      |
| fBodyBodyGyroJerkMagMeanFrequency         | Body gyro jerk magnitude mean frequency             |      |
| fBodyAccelerationMagStd                   | Body acceleration magnitude standart deviation      |      |
| fBodyBodyAccelerationJerkMagStd           | Body acceleration jerk magnitude standart deviation |      |
| fBodyBodyGyroMagStd                       | Body gyro magnitude standart deviation              |      |
| fBodyBodyGyroJerkMagStd                   | Body gyro jerk magnitude standart deviation         |      |
