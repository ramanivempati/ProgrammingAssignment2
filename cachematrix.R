## This R code is written to inverse a matrix
##and cache the inverse of the matrix.It involves 
##two function makeCacheMatrix and cache solve matrix

## makeCacheMatrix creates a special "matrix",which is really a list
#containing a function to

##set the value of the matrix
##get the value of the matrix
##set the value of the inverse matrix
##get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  
  set<-function(y) {
    x<<-y
    inv_matrix<<-NULL
  }
  
  get<-funtion() x
  setInverse <- function(inverse)
    inv_matrix <<- inverse
  getInverse<-function()
    inv_matrix
  list(set = set,get = get, setInverse = setInverse,getInverse = getInverse)

}


## This function is used to check if a matrix is inverse
## and if not then inverse it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv_matrix <- x$getInverse()
  if(!is.null(inv_matrix))
  {
    message("Cached Data")
    return(inv_matrix)
    
  }
  matrix1 <- x$get()
  inv_matrix<-solve(matrix1,...)
  x$setInverse(inv_matrix)
  inv_matrix
}
