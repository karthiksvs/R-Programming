#problem 1
x<- rnorm(1.95)
y <- rnorm(1.1,0,1)
mean(x)
x<- rnorm(1.85)
sqrt(var(x))
cor(x,y)
cor(cbind(x,y))
summary(x)
summary(cbind(x,y))

#problem 2
1-pnorm(1.644)
qexp(0.75,2)