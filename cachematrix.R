## Put comments here that give an overall description of what your
## functions do
#as described from the coursera page, this function is to caculate the inverse
#of a matrix faster by using the cache, that is, a matrix will never be caculated
#twice under cacheSolve function.

## Write a short comment describing this function
#this function is to make a CacheMatrix for CacheSolve to solve

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function
# this function is to caculate the inverse of the function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
