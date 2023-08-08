## Put comments here that give an overall description of what your
## functions do
## The functions in this file Cache the Inverse of a given Matrix, the first one
## gets the matrix and defines the tools that will be used, and the second one
## cache the inverse of the matrix given to the first function

## Write a short comment describing this function
##This function receives a squared matrix and defines the environment that will 
##hold the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m<<- NULL
  }
  get <- function() x 
  setinverse <- function(solve) m<<- solve
  getinverse <- function() m 
  list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}

## Write a short comment describing this function
## This function obtains the inverse of a matrix transform through function 1
## and returns it to the user.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
