#vector 
#problem 1
v = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)

#problem 2
for( i in 1:15){
  print(5000 * (1+11.5/100)*i)
}

#problem 3
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#problem 4
set.seed(3)
while (TRUE) {
  x <- rnorm(1)
  print(x)
  if (x > 1) {
    break
  }
}

#problem 5
set.seed(3)
while (TRUE) {
  x <- rnorm(1)
  if (x < 0) {
    next
  }
  print(x)
  if (x > 1) {
    break
  }
}