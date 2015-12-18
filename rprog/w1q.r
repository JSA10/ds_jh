install.packages("KernSmooth")
library(KernSmooth)
setwd("/Users/jahye01/Documents/DataScience/Courses/DataScienceJH/Rprog/")
getwd()
rp_hw1 <- read.csv("hw1_data.csv")
head(rp_hw1)
dim(rp_hw1)
rp_hw1[152:153,]
rp_hw1[47,1]
rp_hw1$Ozone(is.na)
is.na(rp_hw1$Ozone)
str(rp_hw1)
summary(rp_hw1)
ozone_31 <- rp_hw1$Ozone<31
summary(ozone_31)
q18 <- rp_hw1[rp_hw1$Ozone > 31 & rp_hw1$Temp > 90,]
summary(q18)
q19 <- subset(rp_hw1, Month == 6)
mean(q19$Temp)
max(rp_hw1$Ozone, rp_hw1$Month == 5)
q20 <- subset(rp_hw1, Month == 5)
summary(q20$Ozone)
