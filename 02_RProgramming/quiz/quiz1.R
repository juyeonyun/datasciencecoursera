# If I execute the expression x <- 4 in R, what is the class of the object `x' as determined by the `class()' function?
x <- 4
class(x)

# What is the class of the object defined by x <- c(4, TRUE)?
x <- c(4, TRUE)
class(x)

# Suppose I have a vector x <- 1:4 and a vector y <- 2. 
# What is produced by the expression x + y?
x <- 1:4
y <- 2
x + y

# In the dataset provided for this Quiz, what are the column names of the dataset?
data <- read.csv("hw1_data.csv", header=TRUE)
names(data)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"

# Extract the first 2 rows of the data frame and print them to the console. 
# What does the output look like?
head(data, 2)

# How many observations (i.e. rows) are in this data frame?
str(data)

# Extract the last 2 rows of the data frame and print them to the console. 
# What does the output look like?
tail(data, 2)

# What is the value of Ozone in the 47th row?
data[47, "Ozone"]
## alternatively, 
data$Ozone[[47]]

# How many missing values are in the Ozone column of this data frame?
sum(is.na(data$Ozone))

# What is the mean of the Ozone column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.
mean(data$Ozone, na.rm=TRUE)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?
sub <- data[ which(data$Ozone > 31 & data$Temp > 90), ]
mean(sub$Solar.R, na.rm=TRUE)

# What is the mean of "Temp" when "Month" is equal to 6?
sub2 <- data[ which(data$Month == 6), ]
mean(sub2$Temp, na.rm=TRUE)

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
sub3 <- data[ which(data$Month == 5), ]
max(sub3$Ozone, na.rm=TRUE)
