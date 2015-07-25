

corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        files <- list.files(directory, full.names = TRUE);
        correlationList <- c();
        index <- 1;
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!
        
        while(index <= length(files)) {
                completeCases <- complete(directory, index);
                
                if(completeCases$nobs > threshold) {
                        data <- read.csv(files[index], comment.char = "");
                        correlationList <- c(correlationList, cor(data$sulfate, data$nitrate, use = "complete.obs"));
                }
                index <- index + 1
        }
        
        correlationList;
}


# submit
source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit ()
