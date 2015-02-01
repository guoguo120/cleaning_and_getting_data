##getting data off webpages-readlines()--results are a list of XML data. Therefore do not recommend
con=url("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")##connect with the targeting url
htmlCode=readLines(con)##putting the data fetched from url into the subject htmlCode
close(con)##close the connection
htmlCode ##list the content in the subject htmlCode

## Parsing with XML (twik the data a bit and streat it like XML)
library(XML)
url<-"http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
html<-htmlTreeParse(url,useInternalNodes=T) ##use the interal nodes to sort data, and save them into the subject "html
xpathSApply(html,"//title",xmlValue) ##list all the value whose internal nodes is "title"
xpathSApply(html,"//td[@id='col-citedby']",xmlValue) ##list all the value....


