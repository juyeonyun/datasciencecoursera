## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
### 1. set the value of the vector
### 2. get the value of the vector
### 3. set the value of the mean
### 4. get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
        # initialize the inverse matrix value
        inv <- NULL
        
        # set the value of the matrix
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        # get the value of the matrix
        get <- function(x) x
        
        # set the value of the inverse
        setinverse <- function(inverse) inv <<- inverse
        
        # get the value of the inverse 
        getinverse <- function() inv
        
        # return a list of all the above function
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # return a matrix that is the inverse of 'x'\
        # check if the inverse is already cached
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
        # else, we first get the matrix
        data <- x$get()
        # calculate the inverse
        inv <- solve(data, ...)
        # cache the inverse of the matrix
        x$setinverse(inv)
        # return the result
        inv
}
