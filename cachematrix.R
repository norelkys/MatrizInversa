## The following functions compute the inverse of a square matrix

## Function below is used to create a matrix and cached its inverse. 

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  #set the value of the matrix "x"
  set<-function(y) {
    x <<- y
    i <<- NULL
  }
  #get the value of the matrix "x"
  get <- function() x
  #set the value of the inverse "i"
  seti <- function(solve) i <<- solve
  #get the value of the inverse "i"
  geti <- function() i
  list(set=set, get=get,
       seti=seti,
       geti=geti)
  
}



## Function below is used to calculates the inverse of a matrix "x"

cacheSolve <- function(x = matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$geti()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$seti(i)
  i
}
