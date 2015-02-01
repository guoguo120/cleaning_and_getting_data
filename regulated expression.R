## metacharacters are the grammar of the line, and literals are words

## to search certian literals:
    ## 1. hat--^, put a "^" before a string asks R to search for lines start with 
    ## that sting

    ## "$" represents the end of a line. Put $ behind a string and R will search
    ## for lines that ends with that string

    ## to search a string regardless of whether its lower or upper case: 
    ## [Bb][Uu][Ss][Hh] will find all the combination of capitalized or "xiao xie de" Bush
       ## BUSh,bUsH.....

## The good news is: you can combine all the above features together
## guess what "^[Ii] am" will find you

## Another way to combine it is like:^[0-9][a-zA-Z]: this will return all the 
## lines that start with a number+any letter (lower and upper case), such as 7th, 2nd,3am...

## if you want to find a string that NOT in the indicated class, just put "^?" before the string you do 
## not want to include. For example, [^?.]$ will find you lines that do not end with "."

##"." is used to refer to any character. So "9.11" will return a literal in which
## 9 and 11 are connected with anything. Such as 9-11,9:11...

## "|" is like "or". So flool|fire will return any literal that contains "flood" or "fire"
## you can include as many alternatives as possible
## you can use real expressions as alternatives. Such as ^[Gg]ood|[Bb]ad--anyline starts
## with G/good, or includes B/bad. Notice that if you want to look for lines STARTS WITH 
## GOOD/BAD, PUT ^ IN FRONT OF ALL THE EXPRESSIONS. OR use ^([Gg]ood|[Bb]ad)

## "?" indicates that the indicated expression is optional. It usually puts behind
## the indicated expression
## So [Gg]eorge([Ww]\.)?[Bb]ush will look for anything inludes G/george B/bush, including 
## something like "George W. Bush" --Note that there is a \ before ., that's 
## telling R not to consider this . as the metacharacter . (which means anything), but an
## actual "."

## "*" means any length of content, including none. so 
## (.*) returns brakets that inludes anything, of any length, including nothing

## "+" means at least one, its grammar is kind of like "?", where it's always
## put after the indicated expression
## [0-9]+(.*)[0-9]+ returns: at least one number (such as 9,34,563), followed by anything
## of anylengh, then again followed by at least one number. eg. "4 me 2 go 2 bed"

## {} are referred to as interval quantifiers (how many times something has to appear)
## [Bb]ush( +[^ ]+ +){1,5}debate
## in the above case, we know we are looking for sth has both "bush" and "debate"
## the things in between means "at least one space( +), followed by at least one thing at 
## the begining of a thing ([^ ]+), such as a word, then again followed by at least one space( +)
## and then what was included in the brakets need to appear 1-5 times. In a simple word,
## we are looking for lines with 1-5 words between "Bush" and "debate"







  