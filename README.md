#ReadMe
##R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviationfor each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second,independent tidy data set with the average of each variable for each activity and each subject.  

The script assumes the the working directory is ~/UCI HAR Dataset/  

I first load the library reshape2 in order to use the command dcast and melt at the end of the script.  
After that, I load both the labels used for the activities and store it in the variable **labels**, and then load the name of the variables
measured and stored in the variable **features**. This includes ALL measured and calculated variables. But we are only interested in the mean() and std() of the measurements.(In this case I choose to use the criteria that only the measurements of which there were both mean and std. Thus there are only 66 measurments that I am interested on.)  
In order to extract only the mean and std of the  data, I use the command *grepl* which allows me to match string patters. I store the name of the variables that have the patterns mean() and std() in the variable **featuresToExtract**.  

I then load the test data and train data and only keep the data I am interested in. Then I proceed to label the columns an add 2 more columns, one is the subject test identifier (**Subject**) and the label identifier (**Label**).  
I proceed then to merge the data vertically (mathching columns of both dataframes) to generate a variable called **AllSet**. At this this point "AllSet" includes both the train and test set of data and has a dimension of  
dim(AllSet)= 10299    68  

In order to add the appropriate label for the activities I just merge the data with the labels dataframe using the label (numbers) as the merging attribu, and then order it Subject number. This is stored in **finalSet**.  

In order to generate the tidy data requested in part 5 of the project, I then melt the **finalSet** using the subject number and acvity as the identification attribute and all the measurements as the variables. Finally I cast the melted dataframe into a new wide tidy dataframe using Subjet and Activity and I calcualte the average of all the measurements for every  Subjet and Activity combination.  

To finish, Ic reate the new file witht he tidy Data as requested.
