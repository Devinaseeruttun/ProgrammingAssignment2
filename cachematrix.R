message ( " #calling makecachematrix() function")
message ( " # return value ( a list of four functions) to a variable,m")
message ( " # m is now a list of four functions")
makeCacheMatrix <- function (x = matrix()){
      I <- NULL
 message ( "# use v's set function to create a matrix") 
 message ( " # with nrow =2 and nrow =2")
      set <- function(y = matrix()){
        x <<- y
        I <<- NULL

message ( "# use v's get function to retrieve the matrix created")  
} 
{
  message ( "# pass the list v to the cachesolve() function")  
  message ( " # the inverve  of a 2x2 matrix should be returned")
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
  message("#Pass the list m to the cachesolve a second time")
  message("# the inverse of the 2 x 2 matrix should be returned")
  message("# also a message retrieving catched invverse indicating that")
  message("# the inverse matrix is not been calculated this time but ")
  message("# is being retrieved from catched value")
  message("retrieving catched inverse")  
  I <- x$getsolve()
  if(!is.null(I)) {
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setsolve(I)
  I
  message ("#use v's set function to create a new 3 x 3 matrix")

}


    
