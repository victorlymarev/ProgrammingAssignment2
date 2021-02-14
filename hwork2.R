mat1 <- function(x) {
  i <- NULL
  a <- function(y) {
    i <- NULL
    x <- y
  }
  get <- function() x
  setinv <- function(inv) i <- inv
  getinv <- function() i
  list(a = a, get = get, setinv = setinv, getinv = getinv)
}


invm <- function(x, ...) {
  i <- x$getinv()
  i <- solve(x$get(), ...)
  x$setinv(i)
  i
}