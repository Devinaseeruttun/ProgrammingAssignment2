 #  calling makecachematrix() function
#  return value ( a list of four functions) to a variable,m
#  m is now a list of four functions
makeCacheMatrix <- function (x = matrix()) {
  I <- NULL
#  use v's set function to create a matrix with nrow =n and nrow =n 
  set <- function(y = matrix()) {
    x <<- y
    I <<- NULL
#  use v's get function to retrieve the matrix created and pass the created matrix v to the cacheSolve() function  
#  the inverse of the matrix will be returned
    } 
  get <- function() x
  setsolve <- function(solve) I <<- solve(x)
  getsolve <- function() I
  result <- list(set = set, get = get ,
                 setsolve = setsolve ,
                 getsolve = getsolve)
  return(result)
}  
cacheSolve <- function(x) {  
  I <- x$getsolve()
  if(!is.null(I)) { 
# Retrieving inverse matrix a second time from the environment without performing any calculation
                message( "retrieving catched inverse matrix") 
  return(I)
  }
  data <- x$get()
  I <- solve(data)
  x$setsolve(I)
  I
}
