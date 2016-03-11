## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). 
## Your assignment is to write a pair of functions that cache the inverse of a matrix.

## makeCacheMatrix will create a special "matrix" out of any matrix we will provide
## This will ease the inverse operation if done several times (i.e. if cacheSolve is called several times on that special Matrix)

makeCacheMatrix <- function(x = matrix()) {
        
        ##initiates a NULL variable for the inverse
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        
        ##returns special "matrix" to build from x
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve will take a special matrix as its input, and check whether the calculation has already been put in cache
## if it has, the result will be returned straight away, if not it will calculate the inverse then put the result in cache

cacheSolve <- function(x, ...) {
        
        ## Check whether local variable inv has been set already by previous call of getInverse
        inv <- x$getinverse()
        
        ## Calculation is in cache, reuse
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
        ## Calculation is not in cache, do
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
