makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(x, ...){
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message('getting cached data')
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

#Console

#source('makeCacheMatrix.R')
#Ejecuta la función makeCacheMatrix.R
#pmatrix <- makeCacheMatrix(matrix(1:4, nrow=2, ncol=2))
#cacheSolve(pmatrix)
#[,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5

#pmatrix$get()
#[,1] [,2]
#[1,]    1    3
#[2,]    2    4

#pmatrix$getInverse()
#NULL
#Note: the code in the OP, x $ getinverse () must return NULL because one
#you should run cacheSolve () to fill the cache. 

##2 Example
#pmatrix <-makeCacheMatrix(matrix(c(1,0,0,0,1,0,0,0,2),ncol=3,nrow=3))
#cacheSolve(pmatrix)
#[,1] [,2] [,3]
#[1,]    1    0  0.0
#[2,]    0    1  0.0
#[3,]    0    0  0.5
#pmatrix$get()
#[,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    1    0
#[3,]    0    0    2
#pmatrix$getInverse()
#[,1] [,2] [,3]
#[1,]    1    0  0.0
#[2,]    0    1  0.0
#[3,]    0    0  0.5

