#rm(list=ls())
#Load library reshape2 in order to use the command dcast and melt.
library(reshape2)


#load labels for the activities: walking, sitting...
labels=read.table("activity_labels.txt",header=FALSE,sep="")
#load variables measured which in the description of the data are called features
features=read.table("features.txt",header=FALSE,sep="")
colnames(labels)<-c("Label","Activity")

###############
#extract only the mean and std of the  data. In this case I choose to use the criteria
#that only the measurements of which there were both mean and std. Thus there are only 66
#measurments that I am interested on.
aux=grepl("mean()",as.character(features[,2]),fixed=TRUE)
aux2=grepl("std()",as.character(features[,2]),fixed=TRUE)
varToExtract=aux|aux2
featuresToExtract=features[varToExtract,2]

###############
#For the following, I assume my working directory is ~/UCI HAR Dataset/
#load test data
testSet=read.table("./test/X_test.txt",header=FALSE,sep="")
testSet=testSet[,varToExtract] #only use the mean and std columns
testLabel=read.table("./test/Y_test.txt",header=FALSE,sep="")
subjectTestIdentifier=read.table("./test/subject_test.txt",header=FALSE,sep="")
#lets label the columns and add the Labels and subject identifier number
colnames(testSet)<-as.character(featuresToExtract)
testSet$Label<-testLabel[,1]
testSet$Subject<-subjectTestIdentifier[,1]


##############
#load train data
trainSet=read.table("./train/X_train.txt",header=FALSE,sep="")
trainSet=trainSet[,varToExtract] #only use the mean and std columns
trainLabel=read.table("./train/Y_train.txt",header=FALSE,sep="")
subjectTrainIdentifier=read.table("./train/subject_train.txt",header=FALSE,sep="")
#lets label the columns and add the Labels and subject identifier number
colnames(trainSet)<-as.character(featuresToExtract)
trainSet$Label<-trainLabel[,1]
trainSet$Subject<-subjectTrainIdentifier[,1]

##############
#mergedata
AllSet=rbind(trainSet,testSet)
#At this this point "AllSet" includes both the train and test set of data and has a dimension of
#dim(AllSet)
#10299    68

#In order to add the appropriate label for the activities I just merge the data with
#the labels dataframe using the label (numbers) as the merging attribute. 
finalSet=merge(AllSet,labels,x.by="Label",y.by="Label")
#I order the data finalSet by Subject number
finalSet=finalSet[order(finalSet$Subject),]


#Finally I melt the Finalselt using the subject number and acvity as the identification 
#attribute and all the measurements as the variable
ids=names(finalSet)[c(68,69)]
variables=names(finalSet)[seq(2,67)]
dataMelt=melt(finalSet,id=ids,measure.vars=variables)
#Finally I cast the melted dataframe into a new wide tidy dataframe using Subjet and Activity
#and I calcualte the average of all the measurements for every  Subjet and Activity combination
newData=dcast(dataMelt,Subject+Activity~variable,mean)

#create the new file witht he tidy Data as requested.
write.table(newData,"tidyData.txt", row.names=FALSE)

