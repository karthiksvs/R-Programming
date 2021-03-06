x <-c("a", "b", "c", "c", "d", "a") 
x[1]
x[1:4]
x[c(1, 3, 4)]
u <-x > "a"
u
x[u]
x[x > "a"]

#matrix
x <-matrix(1:6, 2, 3)
x
x[1, 2]
x[2, 1]
x[1, ]
x[ ,2]
x <-matrix(1:6, 2, 3)
x[1, 2]
x[1, 2, drop =FALSE]
x <-matrix(1:6, 2, 3)
x[1, ]
x[1, , drop =FALSE]

#subsetting
x <-list(foo =1:4, bar =0.6)
x
x[[1]]
x[["bar"]]
x$bar
x <-list(foo =1:4, bar =0.6, baz ="hello")
name <- "foo"

## computed index for "foo"
x[[name]] 

## element "name" doesn't exist! (but no error here)
x$name

## element "foo" does exist
x$foo

x <-list(a =list(10, 12, 14), b =c(3.14, 2.81))

## Get the 3rd element of the 1st element
x[[c(1, 3)]] 

## Same as above
x[[1]][[3]]  

## 1st element of the 2nd element
x[[c(2, 1)]] 

x <-list(foo =1:4, bar =0.6, baz ="hello")
x[c(1, 3)]

x <-list(aardvark =1:5)
x$a
x[["a"]]
x[["a", exact =FALSE]]

x <-c(1, 2, NA, 4, NA, 5)
bad <-is.na(x)
print(bad)
x[!bad]
x <-c(1, 2, NA, 4, NA, 5)
y <-c("a", "b", NA, "d", NA, "f")
good <-complete.cases(x, y)
good
x[good]
y[good]
head(airquality)
good <-complete.cases(airquality)
head(airquality[good, ])
