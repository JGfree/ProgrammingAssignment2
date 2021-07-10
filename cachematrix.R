## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initialize first inverse property
  i <- NULL
  
  ## Set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## Set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Get the inverse of the matrix
  getInverse <- function() {
  ## Return the inverse property
    i
  }
  
## List of the methods
list(set = set, get = get,
 setInverse = setInverse,
 getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  
m <- x$getInverse()
  
  
if( !is.null(m) ) {
message("getting cached data")
return(m)
}
  
## 
data <- x$get()
  
## Calculate the inverse with matrix multiplication
m <- solve(data) %*% data
  
## Set the inverse to object
x$setInverse(m)
  
## Return the matrix
m
}