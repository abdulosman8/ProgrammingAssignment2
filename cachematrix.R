## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this functio

makeCacheMatrix <- function(suppliedMatrix = matrix()) {
  iMatrix <- NULL
  set <- function(newInvMatrix){
    suppliedMatrix <<- newInvMatrix
    iMatrix <<- NULL
    
  }
  get <- function(){
    suppliedMatrix
  }
  setInv <- function(newInverseMatrix){
    iMatrix <<- newInverseMatrix
  }
  getInv <- function()
  {
    iMatrix
  }
  list(set = set, get = get, setInv = setInv, getInv = getInv)
  

}


## Write a short comment describing this function

cacheSolve <- function(targetMatrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  invMatrix <- targetMatrix$getInv()
  if(!is.null(invMatrix))
  {
    message("getting Cached Data")
    return(invMatrix)
  }
  
  dataMatrix <- targetMatrix$get()
  invMatrix <- solve(dataMatrix)
  targetMatrix$setInv(invMatrix)
  invMatrix
  
  
}
