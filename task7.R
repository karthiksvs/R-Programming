# problem 1
mymatrix = matrix(data = c(6,34,923,5,0, 112:116, 5,9,34,76,2, 545:549), nrow = 5)
mymatrix
mymatrix = matrix(data = c(6,34,923,5,0, 112:116, 5,9,34,76,2, 545:549), nrow = 5)
apply(mymatrix, MARGIN = 1, FUN = mean)
apply(mymatrix, MARGIN = 2, FUN = mean)
apply(mymatrix, MARGIN = 2, FUN = sort)

#problem 2
lapply(mtcars, FUN = min) -> l
sapply(mtcars, FUN = min) -> s
mapply(mtcars, FUN = min) -> m
l; s; m
listobjects = list(l, s, m)
sapply(FUN = class, X = listobjects)

#problem 3
apply(Titanic, 2, sum)
apply(Titanic, c(2,4), sum)
apply(Titanic, c(3,2), sum)
'lapply' 
'sapply' 
'mapply' 