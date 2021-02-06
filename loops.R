x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
sapply(x, mean) 
## Simulate some data
x <- c(rnorm(10), runif(10), rnorm(10, 1))
## Define some groups with a factor variable
f <- gl(3, 10)   
f
tapply(x, f, mean)
x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)
apply(x, 1, sum) 
apply(x, 1, mean)