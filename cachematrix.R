## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  ## set the value of the matrix m
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## get the value of the matrix
  get <- function() x
  ## set the inverse of the matrix
  setinverse <- function(solve) m <<- solve
  ## get the inverse of the matrix m
  getinverse <- function() m
 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## get the inverse of the matrix
  m <- x$getinverse()
  ## control if there is the matrix
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ## no matrix get the inverse of the matrix
  data <- x$get()
  m <- solve(data, ...)
  ## set the inverse of the matrix
  x$setinverse(m)
  m
}