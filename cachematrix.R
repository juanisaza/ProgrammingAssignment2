## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix for "x" and will cache its inverse  

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        p <- function(y) {
                x <<- y
                m <<- NULL
        }
        h <- function() x
        setmyfunction <- function(inverse) m <<- inverse
        getmyfunction <- function() m
        list(p = p,
             h = h,
             setmyfunction = setmyfunction,
             getmyfunction = getmyfunction)
}


## Write a short comment describing this function
## It calculates the mean of the cached data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
