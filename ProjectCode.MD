### Project Code Book

Source Data : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Source Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached 'run_analysis.R' script will do the follwing

* Merges the training and test sets to create one data set
	the files are downloaded in the 'R' working directory. Merge the file with objects 
        * A - test/X_test and train/X_train
        * B - test/subject_test and train/subject_train
	* C - test/y_test   and train/y_train

* Extracts only the measurements on the mean and standard deviation for each measurement
	download features.txt into working directory and assign to objects
	D - with meand and standard deiation for each measuremnt.

* Uses descriptive activity names to name the activities in teh data set
	Reads activity_lables.txt to get activity names
	walking, 
	walkingupstairs,
	walkingdownstairs,
	sitting,
	standing,
	laying

* Appropriately labels the data set with descriptive variable names.
 	assign approperiate names and its mean,standard deviation which is from number 2, and c
