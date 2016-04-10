## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set the value of the vector, get the value of the vector, set the value of the matrix, get th value of the matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
}
        get <- function() x
        seatmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m
        list(set = set, get = get, 
                seatmatrix = setmatrix
                getmatrix = getmatrix
}                

## Write a short comment describing this function
## Calculates the matrix of the data and set the value of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- matrix(data, ...)
        x$setmatrix(m)
        m
}
