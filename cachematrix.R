
## The pair of functions will cache the inverse of a matrix.

## This function will only be creating a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
x <<- y
inv <<- NULL
  }
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## The following function will compute the inverse of the special "matrix", which is returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
if(!is.null(inv)){
  message("getting cached data")
  return(inv)
}
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv
}
}
