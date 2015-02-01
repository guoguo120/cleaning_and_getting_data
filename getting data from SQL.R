ucscDb<-dbConnect(MySQL(),user="genome",
				  host="genome-mysql.cse.ucsc.edu")
result<-dbGetQuery(ucscDb,"Show databases;");dbDisconnect(ucscDb);

result

hg19<-dbConnect(MySQL(),user="genome",db="hg19",
				host="genome-mysql.cse.ucsc.edu") #connect to database hg19#
allTables<-dbListTables(hg19) #pull all the database into the subject called allTables#
length(allTables) #check the number of tables the database contain#

allTables[1:5] #list the first 5 tables in the database#

dbListFields(hg19,"affyU133Plus2") #list all the fields(column names)
# of table "affyU133Plus2" in database hg19)#

dbGetQuery(hg19,"select count(*) from affyU133Plus2") #count the query (row names)
# of the table "affyU133Plus2" in database hg19. "select count(*) from affyU133Pluse2" is a
# SQL command#

## to read a database into R:
affyData<-dbReadTable(hg19,"affyU133Plus2")
head(affyData)

## to select a specific subset
query<-dbSendQuery(hg19,"select * from affyU133Pluse2 where misMatches between 1 and 3") 
# command in "" is a SQL command, it reads as: select obervastions (*) from table "affyU133Plus2" where the colum "misMatches"'s value between 1 and 3)
## then store the selected subset into an object by:
affyMis<-fetch(query)
##check the quantile of the fetched subset
quantile(affyMis$misMatches) ##the subset extracted from the database keeps the same column name and was added to the subject affyMis as a column

affyMisSmall<-fetch(query,n=10); dbClearResult(query) #fetch only the top 10 rows from the object "query", then clean the content in the object "query"

#close the connection as soon as you don't need it
dbDisconnect(hg19)