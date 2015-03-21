
R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> #1
> tbl1 <- read.table("/train/x_train.txt")
> tbl2 <- read.table("/test/x_test.txt")
> A <- rbind(tbl1,tbl2)
> 
> tbl1 <- read.table("/train/subject_train.txt")
> tbl2 <- read.table("/test/subject_test.txt")
>  B <- rbind(tbl1,tbl2)
> 
>  tbl1 <- read.table("/train/y_train.txt")
>  tbl2 <- read.table("/test/y_test.txt")
>  C <- rbind(tbl1,tbl2)
> 
> #2
> D <- read.table("/features.txt")
>  good_features <- grep("-mean\\(\\)|-std\\(\\)",D[,2])
>  A <-A[,good_features]
>  names(A) <-D[good_features,2]
>  names(A) <-gsub("\\(|\\)","",names(A))
>  names(A) <-tolower(names(A))
> 
> #3
>  act <- read.table("/activity_labels.txt")
>  act[,2]= gsub("_","",tolower(as.character(act[,2])))
>  C[,1] =act[C[,1],2]
>  names(C) <- "activity"
> 
> #4
>  names(B) <- "subject"
>  cleaned <- cbind(B,C,A)
>  write.table(cleaned, "merged_clean_data.txt")
> 
