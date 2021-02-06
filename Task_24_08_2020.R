#task 2
#addition
a <- 8;  b<- 4.5;
print(a+b)
#subtraction
print(a-b)
#multiplication
print(a*b)
#division
print(a/b)

#task 3
a <- "Hello"
b <- 'Hi'

#Concatenation
print(paste(a,b))
print(paste(a,b, sep = "-"))
print(paste(a,b, sep = "", collapse = ""))
# Changing to upper case.
result <- toupper("Changing To Upper")
print(result)

# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)
#Formatting strings
# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)
