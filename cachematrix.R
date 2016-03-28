## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function creates special vector that contains functions to m
## 1. Set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix
## the <<- operator sets the 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }

  get <- function()x
  setInverse <- function(solve)m <<- solve
  getInverse <- function()m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse
       )
  }


## Write a short comment describing this function
## The function calculates the inverse of the special vector
## containing the matrix and checks in cache if the inverse
## is available. If not it calculates the inverse and sets it using
## the setInverse method on the object x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if (!is.null(m)){
      message("getting cached data")
      return(m)
    }
    message("computing inverse : no cache")
    data <- x$get()
    m <- solve(data,...)
    x$setInverse(m)
    m
}

