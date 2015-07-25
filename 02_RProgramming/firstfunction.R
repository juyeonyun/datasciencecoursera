add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n = 10) { # add default value for n
  use <- x > n
  x[use]
}

columnmean <- function(y, removeNA = TRUE) {  # y is dataframe or matrix
  nc <- ncol(y) # calculate number of columns
  means <- numeric(nc)  # calculate mean
  for(i in 1:nc) {  # for loop through the column
    means[i] <- mean(y[, i], na.rm = removeNA)  # this is a mean function
  }
  means # return the vector of the mean
}