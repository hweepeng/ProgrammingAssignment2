## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  # initialise variable i as NULL
  i <- NULL
  
  # set the matrix
  set <- function(matrix){
    x <<- matrix
    i <<- null
  }
  
  # get the matrix
  get <- function(){
    x
  }

  # inverse the matrix
  setInverse <- function(inverse){
    i <<- inverse
  }

  # get the inverse matrix
  getInverse <- function(){
    i
  }
  
  # list the methods
  list(get = get, set = set, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # return inverse of x
  m <- x$getInverse()
  
  # return if inverse set
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  # else get matrix
  data <- x$get()
  
  # compute inverse
  m <- solve(data, ...)
  
  # set inverse
  x$setInverse(m)
  
  # return matrix
  m
}



