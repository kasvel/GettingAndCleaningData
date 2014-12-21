#Code Book
##Course Project

The final data set consists of a tidy data set with the average of each variable for each activity and each subject.  
The activity types are:  
1. WALKING  
2. WALKING_UPSTAIRS  
3. WALKING_DOWNSTAIRS  
4. SITTING  
5. STANDING  
6. LAYING  

The signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. For each variable, the mean and standard deviation (std) were calculated of the original measurements. Based on the description of the variables in the README.txt file from the original data, the values of the variables are  normalized and bounded within \[-1,1\] (physical units are unknow since they are not specified in the original file).  Therefore, in the final tidy data set there are 66 variables  


tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y   
tBodyAccJerk-std()-Z   
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X   
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z   
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()   
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()   
fBodyAcc-mean()-X   
fBodyAcc-mean()-Y   
fBodyAcc-mean()-Z   
fBodyAcc-std()-X   
fBodyAcc-std()-Y     
fBodyAcc-std()-Z   
fBodyAccJerk-mean()-X   
fBodyAccJerk-mean()-Y   
fBodyAccJerk-mean()-Z   
fBodyAccJerk-std()-X    
fBodyAccJerk-std()-Y    
fBodyAccJerk-std()-Z    
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z   
fBodyGyro-std()-X    
fBodyGyro-std()-Y    
fBodyGyro-std()-Z    
fBodyAccMag-mean()  
fBodyAccMag-std()     
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()    
fBodyBodyGyroMag-std()   
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std() 
