## to find today's date, simply use the date funciton, and it will return the value
## as character

d1=date()
d1
class(d1)

## however, if you want to calculate date, you cannot use charaters. So let's
## do something else by using the Sys.Date

d2=Sys.Date()
class(d2)
    ##return "Date"

## now you can formatting the dates you obtained from the Sys.Date function,
## for example:
format(d2,"%a %b %d")
## and you will get "Sun Feb 01". Here %a=abbreviated weekday, %d=day as number (0-31)
## %b = abbreviated month. For more formats, use ?format to check

## Now lets transfer some pooly formated dates and do some calculation:
x=c("1jan1960","2jan1960","31mar1960","30jul1960"); z=as.Date(x,"%d%b%Y")
z
    ## return:"1960-01-01" "1960-01-02" "1960-03-31" "1960-07-30"
z[1]-z[2]
    ##return:"Time difference of -1 days"
as.numeric(z[1]-z[2])
    ##return:"-1"

## Further, we formmat d2 (Date format) by:
weekdays(d2)
    #Return "Sunday"
months(d2)
    #Return "Feburary"
julian(d2)
    #Return " 16467
    #attr(,"origin")
    # "1970-01-01"--this is how many days it is way from the origin date

## Again, things can be easier with packages:
library(lubridate);ymd("20140108")
    #Return "2014-01-08 UTC"
mdy("08/04/2013")
    # Return "2013-08-04 UTC"
dmy("03-04-2013")
ymd_hms("2011-08-03 10:15:03")
    ##Return "2011-08-03 10:15:03 UTC"
## of course you can adjust the time zone
ymd_hms("2011-08-03 10:15:03",tz="Pasific/Auckland")
    ##Return "2011-08-03 10:15:03 UTC"
## for more info, check ?Sys.timezone


