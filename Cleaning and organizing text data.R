##download the camera data and save it as cameraData
if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv",method="curl")
cameraData<-read.csv("./data/cameras.csv")
names(cameraData)

##Turn all the names to lower case
tolower(names(cameraData))

## split the item names that has . in it(them), so all the variable names are spearated by space
splitNames=strsplit(names(cameraData),"\\.")
## or you can also use splitNames[[6]]

##now take the first word of the 6th colum name
SplitNames=splitNames[[6]][1]
##This works pretty well. Now let's write a function to extract the first workd of
## the first element of all column names
firstElement<-function(x){x[1]}
sapply(splitNames,firstElement)

## Get the peer review data
fileUrl1<-"https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
fileUrl2<-"https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
download.file(fileUrl1,destfile="./data/reviews.csv",method="curl")
download.file(fileUrl2,destfile="./data/solutions.csv",method="curl")
reviews<-read.csv("./data/reviews.csv");solutions<-read.csv("./data/solutions.csv")
head(reviews,2)
head(solutions,2)
## take a look at the column names
names(reviews)
## to substitute "_" with " ", use the sub function on the whole data frame
## and all the underscores will be substituted by space
sub("_","",names(reviews),)

##but if we use sub on only one element, then only the first "_" will be replaced
testName<-"this_is_a_test"
sub("_","",testName)
## if you want to remove all the "_"s in the item, use gsub
gsub("_","",testName)

## Finding Values with grep() and grepl()
## grep() is the function that helps you find where the targeting item is
grep("Alameda",cameraData$intersection)
## grelp is the function to tell you how many times an item appeared in an area
table(grepl("Alameda",cameraData$intersection))
## you can also use grelp to subset a group of data 
cameraData2<-cameraData[!grepl("Alameda",cameraData$intersection),]
## if you want to see the item that includes the targeting item, simply add "value=TRUE")
## to the end
grep("Alameda",cameraData$intersection,value=TRUE)
## if the targeting item is not included in the data frame, R will return "interger(0)"
grep("JeffStreet",cameraData$intersection)


## To make your life easier, you can use the "stringr" package
library(stringr)
## you can use nchar to count the length of a character
nchar("Jeffery Leek")
## and subtract part of a string by indentifying the starting number and ending number
substr("Jeffrey Leek",1,7)
## you can also paste two strings together by using the paste function
paste("Jeffery","Leek")
## if you don't want any space between your pasted strings, use paste0
paste0("Jeffery","Leek")
## to get rid of the excessive space after a string, use str_trim function
str_trim("Jeff   ")
