##Q1
##download the 2006 microdata and save it as mcData
if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv "
download.file(fileUrl,destfile="./data/mcdata.csv",method="curl")
mcData<-read.csv("./data/mcdata.csv")
names(mcData)

## split the item names that has "wgtp" in it(them), so all the variable names are spearated by space
splitNames=strsplit(names(mcData),"wgtp")

##Q2
##download the GDP data and save it as GDPData
if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv "
download.file(fileUrl,destfile="./data/gdpdata.csv",method="curl")
GDPData<-read.csv("./data/gdpdata.csv")
names(GDPData)
##substitute all the "," in the GDP numbers
GDPvalue<-as.numeric(gsub(",","",GDPData$X.3))
## note that values after 194 are summarized values, and you should 
## not include them in your calculation
mean(GDPvalue[1:194],na.rm=TRUE)

##Q3
## Load the education data
if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileUrl,destfile="./data/edudata.csv",method="curl")
EDUData<-read.csv("./data/edudata.csv")
str(EDUData)
## rename the X1 colume (which includes the country short name) as "CountryCode"
colnames(GDPData)[1]<-"CountryCode"
## merge the two data frames by countrycode
total<-merge(GDPData,EDUData,by="CountryCode")
## use grep to count the times a value appeared in an area
table(grepl("Fiscal year end: June",total$Special.Notes))

##Q4
## install the quantmod package and get Amazon's historic stock price 
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
## search "2012" in SampleTimes to see how many data are collected in 2012
table(grepl("2012",sampleTimes))
## subset data that are collected in 2012
amdata12<-data.frame(amzn[grepl("2012",sampleTimes),])
## create an object to see the weekdays
amdata12$dates<-rownames(amdata12)
class(amdata12$dates)
## note that amdata12$dates are still characters, in order to convert it
## to weekdays, argument must be of "date" class
amdata12$dates<-as.Date(amdata12$dates)
WeekDays<-weekdays(amdata12$dates)
table(grepl("Monday",WeekDays))

