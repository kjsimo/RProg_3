### Test Scripts for Rank Hospital
rankhospital("MN", "heart attack", 5000)
rankhospital("MD", "heart attack", "worst")
rankhospital("TX", "heart failure", 4)
rankhospital("NC", "heart attack", "worst")

### Test Scripts for Best
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript3.R")
submit()
pw: Wk38WPYQwp

# Invalid Outcome
best("AZ", "test")
best("NM", "test")
best("NY", "hert attack")

# Invalid State
best("test", "heart attack")
best("test", "heart failure")
best("test", "pneumonia")
best("BB", "heart attack")

# Valid Cases
best("IN", "heart attack")
best("IL", "heart failure")
best("MI", "pneumonia")
best("SC", "heart attack")
best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "heart attack")
best("MD", "pneumonia")

outcome_data <- read.csv("outcome-of-care-measures.csv", na.strings = "NA", colClasses = "character")
x <- outcome_data[11]
View(x)

outcome_data <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available", colClasses = "character")
x <- outcome_data
View(x)
min(x, na.rm = TRUE)
min(as.numeric(x[,11]), na.rm = TRUE)

y <- x[,!is.na(x[,11])]
head(y)
z <- as.numeric(x[!is.na(x)])

outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
x <- outcome_data[11]
View(x)
