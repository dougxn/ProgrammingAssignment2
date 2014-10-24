## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	getinverse <- function() i
	setinverse <- function(inv) i <<- inv
	list(
		set=set, 
		get=get, 
		setinverse=setinverse, 
		getinverse=getinverse
	)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if ( !is.null( i ) ) {
        	message("Getting cached date!")
        	return(i)
        }
        d <- x$get()
        i <- solve( d, ...)
        x$setinverse(i)
        
        i	
}
