## Assumes that the initial data is unzipped and in the working directory
## Load necessary library
library(plyr)
## Reads in 'activity_labels.txt'
activity_names <- read.table("activity_labels.txt", col.names=c("id", "activity_name"))
## Read and subsets 'features.txt'
features <- read.table('features.txt')
features <- subset(features, select=V2)
## Reads in 'subject_test.txt' and 'subject_train.txt'
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
## Reads in  x&y test and x&y train
x_train <- read.table("X_train.txt", header=FALSE)
y_train <- read.table("Y_train.txt", header=FALSE)
x_test <- read.table("X_test.txt", header=FALSE)
y_test <- read.table("Y_test.txt", header=FALSE)

## Binds together x_test and x_train
xtest_train <- rbind(x_test,x_train)

## Add column names to xtest_train
features$V2 <- as.character(features$V2)
colnames <- features[,2]
names(xtest_train) <- colnames

## Combine subject_test and subject_train
subject <- rbind(subject_test, subject_train)

## Combine subject with xtest_train
subx_test_train <- cbind(subject, xtest_train)

## Combine y_test and y_train
activity <- rbind(y_test,y_train)

## Combine activity and subx_test_train
act_subx_test_train <- cbind(activity, subx_test_train)
colnames(act_subx_test_train)[1]="Activity"
colnames(act_subx_test_train)[2]="Subject"

## Change Activity info from numbers to description
act_subx_test_train$Activity[act_subx_test_train$Activity %in% "1"]  <- "Walking"
act_subx_test_train$Activity[act_subx_test_train$Activity %in% "2"]  <- "Walking Upstairs"
act_subx_test_train$Activity[act_subx_test_train$Activity %in% "3"]  <- "Walking Downstairs"
act_subx_test_train$Activity[act_subx_test_train$Activity %in% "4"]  <- "Sitting"
act_subx_test_train$Activity[act_subx_test_train$Activity %in% "5"]  <- "Standing"
act_subx_test_train$Activity[act_subx_test_train$Activity %in% "6"]  <- "Laying"

## Find columns containing the mean and std
xy_mean <- act_subx_test_train[,grep('mean()', colnames(act_subx_test_train))]
xy_std <- act_subx_test_train[,grep('std()', colnames(act_subx_test_train))]

## Creates re-ordered data
xy_datatot <- cbind(act_subx_test_train$Subject, act_subx_test_train$Activity, xy_mean, xy_std)
colnames(xy_datatot)[1]="Subject"
colnames(xy_datatot)[2]="Activity"

## Tidy column names
cname <- names(xy_datatot)
cname  <- sub('^f',"", cname)
cname <- sub('^t',"",cname)
## Puts tidy names back into xy_datatot
colnames(xy_datatot) <- cname 
## Calculates mean for every variable for each Subject and Activity
tidy_data <- ddply(xy_datatot, .(Subject, Activity), numcolwise(mean))
## Writes and saves data to a .txt file
write.table(tidy_data, "tidy_data.txt")