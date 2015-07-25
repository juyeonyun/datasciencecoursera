complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
#         allfiles <- list.files(path = directory,
#                                full.names = TRUE);
#         
#         completecases <- data.frame();
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        nobs = numeric()
        
        for (i in id) {
                
                newread = read.csv(paste(directory, 
                                         "/", 
                                         formatC(i, width = 3, flag = "0"),
                                         ".csv",
                                         sep = ""))
                nobs = c(nobs, sum(complete.cases(newread)))
        }
        
        return(data.frame(id, nobs))
}


# testing
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)


# submit
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit ()
