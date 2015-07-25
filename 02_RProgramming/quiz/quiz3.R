library(datasets)
data(iris)

# what is the mean of 'Sepal.Length' for the species virginica?
sapply(split(iris$Sepal.Length, iris$Species), mean)

# means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean)

# How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
data(mtcars)
?mtcars

tapply(mtcars$mpg, mtcars$cyl, mean)

# what is the absolute difference between 
# the average horsepower of 4-cylinder cars and 
# the average horsepower of 8-cylinder cars?
x <- with(mtcars, tapply(hp, cyl, mean))
abs(x[3] - x[1])

## alternative, 
hp <- sapply(split(mtcars$hp, mtcars$cyl), mean)
abs(hp[3] - hp[1])

# If you run debug(ls)
# what happens when you next call the 'ls' function?
debug(ls)
ls

## Execution of 'ls' will suspend at the beginning of the function and 
## you will be in the browser.