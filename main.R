main <- function()
{
  # initialize a
  a = matrix(c(4,3,3,2),2,2)
  b = matrix(c(1,3,2,4),2,2)
  
  # call MakeCacheMatrix
  mcm <- makeCacheMatrix(a)
  
  # Set
  message("aaaaaaaaaaaaaaaaaaa")
  mcm$set(a)
  
  #make sure that x and m are  objects
  print("making sure that x and m are objects")
  print("x")
  print(x)
  print("m")
  print(m)
  
  # call cacheSolve() the first time, make sure that Solve is calculated
  print("should get calculated message")
  cacheSolve(mcm)
  
  # call cacheSolve again, and make sure that solve is not calculated again
  print("shoulg NOT get calculated message")
  cacheSolve(mcm)
  
  # call cacheSolve again, and make sure that solve is not calculated again
  print("shoulg NOT get calculated message")
  cacheSolve(mcm)
  
  # Set b
  message("bbbbbbbbbbbbbbbbbb")
  mcm$set(b)
  
  # call cacheSolve() the first time, make sure that Solve is calculated
  print("should get calculated message")
  cacheSolve(mcm)
  
  # call cacheSolve again, and make sure that solve is not calculated again
  print("shoulg NOT get calculated message")
  cacheSolve(mcm)
  
  # call cacheSolve again, and make sure that solve is not calculated again
  print("shoulg NOT get calculated message")
  cacheSolve(mcm)
  
  message("main exiting")
   
}