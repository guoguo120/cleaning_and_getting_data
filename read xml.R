library(httr);html2=GET(url)
content2 = content(html2,as="text")
parsedHtml=htmlParse(content2,asText=TRUE)
readLines(parsedHtml[15])
nchar(capture.output(parsedHtml)[10])

con=url(url)
htmlcode=readLines(con)
readLines(htmlcode[15])


