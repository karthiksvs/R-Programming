x<- rnorm(50)
y <- rnorm(50,0,1)
mean(x)
sqrt(var(x))
cor(x,y)
cor(cbind(x,y))
summary(x)
summary(cbind(x,y))
1-pnorm(1.644)
qexp(0.75,2)
sample(c("Head","Tail"), 10, prob=c(0.3,0.7),replace=T)
help(package="MASS")
set.seed(1)
runif(10)
set.seed(1)
runif(10)
runif(10)

dice <- 1:6
winning_difference <- 3:5

win_dicethrow <- function(dice, winning_difference) {
  throw <- sample(dice, size = 2, replace = TRUE)
  abs(diff(throw)) %in% winning_difference
}

# Number of simulation

n <- 1e5
# Run n simulations

sim <- replicate(n, win_dicethrow(dice, winning_difference))

# Estimated probabilitiy

mean(sim)
## [1] 0.33276