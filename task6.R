#problem 1
v <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), 
       sd(rivers), min(rivers), max(rivers))
v

#problem 2

mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim = 0.25)
trimfraction <- 10/length(rivers)
mean(rivers, trim = trimfraction)
