## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCache Matrix is the function to store the cache of the new matrix I exported the MASS library ofr more complicated matrix
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    get<-function()x
    setinv<-function(inv_ma) m<<-inv_ma
    getinv<<-function()m
    list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function
## This function provide the inverse matrix and use the cache that is stored in the environment

cacheSolve <- function(x, ...) {
    m<-x$getinv()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data<-x$get()
    m<-ginv(data)
    x$setinv(m)
    m    
    ## Return a matrix that is the inverse of 'x'
}
