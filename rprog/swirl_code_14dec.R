#swirl rprog
install.packages("swirl")
library(swirl)
setwd("/Users/jeromeahye/Documents/DataScience/DS_JH")
save.image("dss_wk1.rdata")
ls()
rm(list=ls())
swirl()
Jerome
1
1
x <- c(44, NA, 5, NA)
x*3
y <- rnorm(1000)
z<- rep(NA, 1000)
my_data <- sample(c(y,z),100)
is.na(my_data)
my_na <- is.na(my_data)
my_na
my_data == NA
#NOTE R represents TRUE = 1, FALSE = 0
sum(my_na)
my_data
0/0
Inf - Inf
1
1
rprog-035
jerome.ahye@gmail.com
legend10
1
1
2
1
6 #subsetting vectors
x
x[1:10]
1
x[is.na(x)]
y<- x[!is.na(x)]
y
1
y[y > 0]
x[x > 0] #NA is not a value, so NA > 0 = NA and we have NAs left mixed in
x[!is.na(x) & x > 0]
x[c(3,5,7)]
x[0]
x[3000] #R will not stop us from trying to subset values that aren't there
#it's up to us to ensure that what we try and subset is within the bounds of
#vector we are working with
x[c(-2, -10)]
x[-c(2, 10)]
vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)
1
vect["bar"]
vect[c("foo", "bar")]
1
2
back()
1

9
Sys.Date()
c(2,4,5)
mean(c(2,4,5))

