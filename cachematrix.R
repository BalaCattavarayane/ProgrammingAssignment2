## This assignment is to write a pair of functions that cache the 
## inverse of a matrix.

## Function to create a special matrix object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        i  <- NULL
        set  <- function(y){
                x <<- y
                i <<- NULL 
        }
        get  <- function() x
        setinverse  <- function(inverse) i  <<- inverse
        getinverse  <- function() i
        list(set= set, get = get, 
             setinverse = setinverse, 
             getinverse = getinverse)

}


## Function to compute the inverse. 
## If the inverse has already been calculated (and the matrix has not changed),
## then cachesolve should retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        i  <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data  <- x$get()
        i  <- solve(data, ...)
        x$setinverse(i)
        i
}
