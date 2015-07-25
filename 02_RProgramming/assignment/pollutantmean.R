setwd("~/Documents/Study/Coursera/datasciencecoursera/02_RProgramming/assignment")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ### Getting a list of filename
  data = data.frame();
  files <- list.files(directory, full.names = TRUE);
    
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ### Initialising a vector to store values
  #vals <- vector(mode = "character", length = 1)
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ### Looping through column
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!

  for(i in files) {
          data <- rbind(data, read.csv(i, comment.char = ""))
  }
  
  neededMonitors <- subset(data, ID %in% id);
  pollutantMean <- mean(neededMonitors[[pollutant]], na.rm = TRUE);
  pollutantMean;
} 
  


# tests
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)



# submit
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit ()


