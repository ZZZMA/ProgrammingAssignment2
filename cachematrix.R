## The following two functions are used to cache the iverse of a matrix.

## This function will create a list containing a function to set the value and get
## the value of both matrix and the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}


## This function will return the inverse of the matrix.

cacheSolve <- function(x, ...) {
        my_inv <- x$getinverse()
        if (!is.null(my_inv)) {
                message("getting cached data")
                return(my_inv)
        }
        data <- x$get()
        my_inv<- solve(data, ...)
        x$setinverse(my_inv)
        my_inv
}
