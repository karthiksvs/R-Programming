#The result of division of first vector with second (quotient)
v <- c( 2,5.5,6)

t <- c(8, 3, 4)

print(v%/%t)
#Called Left Assignment
v1 <- c(3,1,TRUE,2+3i)

v2 <<- c(3,1,TRUE,2+3i)

v3 = c(3,1,TRUE,2+3i)

print(v1)

print(v2)

print(v3)
#Called Right Assignment
c(3,1,TRUE,2+3i) -> v1

c(3,1,TRUE,2+3i) ->> v2

print(v1)

print(v2)
#Colon operator. It creates the series of numbers in sequence for a vector.
v <- 2:8

print(v)
#This operator is used to identify if an element belongs to a vector.
v1 <- 8

v2 <- 12

t <- 1:10

print(v1 %in% t)

print(v2 %in% t)
#This operator is used to multiply a matrix with its transpose.
M = matrix( c(2,6,5,1,10,4), nrow=2,ncol=3,byrow = TRUE)

t = M %*% t(M)

print(t)