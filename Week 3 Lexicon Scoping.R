print("This file was created within RStudio")

print("And now it lives on GitHub")


## Put comments here that give an overall description of what your
## functions do

## write a short comment describing this function

+##There are two functions makeCacheMatrix,makeCacheMatrix
  +##makeCacheMatrix consists of set,get,setinv, getinv
  
  makeCachematrix <- function(x = matrix()) {
    inverse <- NULL #initializing inverse as NULL
    set<- function(y){
      x<<-y
      inverse<<-NULL
    }
    get<-function(){x}              #function to get matrix x
    setinverse<-function(inversecalculated){inverse<<-inversecalculated}
    getinverse<-function() {inverse}
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }

##write a short comment describing this function
##This is used to get the cache data

cacheSolve <- function(x, ...) ##gets cache data
{
  inverse<-x$getinverse()
  if(!is.null(inverse)){              #checking whether inverse is NULL
    message("getting cached data")
    return(inverse)           #returns inverse value
  }
  data<-x$get()
  inverse<-solve(data, ...)     #calculates inverse value
  x$setinverse(inverse)
  inverse    ## Return a matrix that is the inverse of 'x'
}

#make changes to file#
