## overall description of what your functions do

## Matrix inversion is usually a costly computation and their may be some benefit to caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.
## 
## Write the following functions:
##   1.makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## 2.cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
## 
## Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.
## 
## For this assignment, assume that the matrix supplied is always invertible



## short comment describing this function
# 1.makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(p = matrix()) {
  
  # notes:
  # this function defines 2 global variables:
  # x is the original matrix
  # m is the inverted matrix
  
  
  ### define the set function
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  ### define the get function
  get <- function() x
  
  ### define the setSolve function
  setSolve <- function(inverted) {     
    m <<- inverted
    message("Calculated")
  }
  
  ### define the getSolve function
  getSolve <- function() m
  
  ### construct the returned list
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
  
}


## Write a short comment describing this function
#2.cacheSolve: This function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above. If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve should retrieve the inverse 
# from the cache.

cacheSolve <- function(p, ...) {
  ##### this function Returns a matrix that is the inverse of 'x'
  
  ### get the inverted matrix
  localm <- p$getSolve()
  
  ### check if we already have the inverted matrix
  #ignore this >>>>>> if(identical(x,p$get()) && !is.null(localm)) {
  if(!is.null(localm)) {
    # We already have inverted matrix
    message("getting cached data")
    message("inverted matrix:")
    print(localm)
    return(localm)
  }
  
  ### DO NOT have inverted matrix. section below calculates inverted matrix
  # get the original matrix
  data <- p$get()
  # calculate inverted matrix
  inverted <- solve(data)
  # set the global variable m
  p$setSolve(inverted)
  
  ### print and exit
  message("inverted matrix:")
  print(m)
  
}
