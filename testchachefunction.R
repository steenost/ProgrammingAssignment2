## test of matrix funtions
## make matrix
amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
## get the values of the matrix
amatrix$get() 
##  use the chacheSolve to inverte the matrix
cacheSolve(amatrix) 
## get the inverse matrix function
amatrix$getinverse() 
##  set a new matrix
amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2))
## get the values of the new matrix
amatrix$get() 
##  use the chacheSolve to inverte the new matrix
cacheSolve(amatrix) 
amatrix$getinverse()
