message ( " #calling makecachematrix() function")
message ( " # return value ( a list of four functions) to a variable, m")
message ( " # m is now a list of four functions") 
makeCacheMatrix <- function (x = matrix()){
      I <- NULL
 message ( "# use v's set function to create a matrix") 
 message ( " # with nrow =n and nrow =n")
      set <- function(y = matrix()){
        x <<- y
        I <<- NULL

message ( "# use v's get function to retrieve the matrix created")  
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
  message("retrieving catched inverse matrix") 
    return(I)
  }
  
  data <- x$get()
  I <- solve(data)
  x$setsolve(I)
  I
  
}
