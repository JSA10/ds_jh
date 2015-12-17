getwd()
setwd("/Users/jeromeahye/Documents/DataScience/DS_JH/rprog/")
if (!file.exists("specdata")) {
    dir.create("specdata")
}
setwd("/Users/jeromeahye/Documents/DataScience/DS_JH/rprog/specdata")
temp <- list.files(pattern = "*.csv")
specdata_files <- lapply(temp, read.csv)

#pollutantmean <- function(directory, pollutant, id = 1:332) {
    #sapply(directory, mean(pollutant) <- specdata
        #for i in id {
            #mean(pollutant)
        #}
   # }
