setwd("/Users/jeromeahye/Documents/DataScience/DS_JH/getclean_data/")
getwd()

hi06_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destfile <- "hi06.csv"
house_idaho_06 <- download.file(hi06_url, destfile, method = "curl")
data_downloaded <- date()
hi06 <- read.csv("hi06.csv")
head(hi06)
str(hi06)
summary(hi06$VAL)
plus_m <- subset(hi06, VAL == 24)
table(plus_m$VAL)
sum(plus_m$VAL)
table(is.na(plus_m$VAL))
View(hi06$FES)
head(hi06$FES)
str(hi06$FES)
summary(hi06$FES)



#Q3
ngap_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
destfile2 <- "ngap.csv"
ngap <- download.file(ngap_url, destfile2, method = "curl")
ngap_downloaded <- date()

install.packages("xlsx")
library(xlsx)
dat <- read.xlsx("ngap.csv", sheetIndex=1, colIndex = 7:15, rowIndex = 18:23)
ngap1 <- read.csv("ngap.csv")
sum(dat$Zip*dat$Ext,na.rm=T)

install.packages("XLConnect")
library(XL)

install.packages("XML")
library(XML)
balt_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
baltr <- xmlTreeParse(balt_url, useInternalNodes = TRUE)
?xmlTreeParse
?par
