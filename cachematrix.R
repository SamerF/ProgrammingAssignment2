## Put comments here that give an overall description of what your
## functions do

## Matrix inversion is usually a costly computation and their may be some benefit to caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.
## 
## Write the following functions:
##   1.makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## 2.cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
## 
## Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.
## 
## For this assignment, assume that the matrix supplied is always invertible


## Write a short comment describing this function
# 1.makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(p = matrix()) {
  
  #########m <- NULL 
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function() {     
    m <<- solve(x)
    message("Calculated")
  }
  getSolve <- function() m
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
  
  # x is the matrix
  # m is the inverted matrix
  
}


## Write a short comment describing this function
#2.cacheSolve: This function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above. If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve should retrieve the inverse 
# from the cache.

cacheSolve <- function(p, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  #print(1)
  localm <- p$getSolve()
  #print(2)
  if(identical(x,p$get()) && !is.null(localm)) {
    message("getting cached data")
    message("inverted matrix:")
    print(localm)
    return(localm)
  }
  data <- p$get()
  p$setSolve()
  message("inverted matrix:")
  print(m)
  
}
