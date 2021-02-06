#tasks
# problem 1
Fibonacci <- function(n) {
  x <- c(0,1)
  while (length(x) < n) {
    position <- length(x)
    new <- x[position] + x[position-1]
    x <- c(x,new)
  }
  return(x)
}
Fibonacci(10)

#problem 2
Fun <- function(){
  x <- c(7, 4, 3, 9, 1.2, -4, -5, -8, 6, NA) 
  sort(x, decreasing = TRUE) 
  sort(x, na.last = TRUE) 
}
Fun()

#problem 3
Fun <- function(){
  x <- c(7, 4, 3, 9, 1.2, -4, -5, -8, 6, NA) 
  sort(x, decreasing = TRUE) 
  sort(x, na.last = TRUE) 
}
Fun()

# problem 4
tmpFn <- function(mat)
{
  mat[mat%%2 == 1] <- 2 * mat[mat%%2 == 1]
  mat
}
tmpFn(15)

#Exercise
#problem 1
Fun <- function(){
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data) 
}
Fun()

#problem 2
Fun <- function(df,a,b){
  aux=df[a,'Code']
  df[a,'Code']=df[b,'Code']
  df[b,'Code']=aux
  return(df)
}
Id=c(1:10)
Age=c(14,12,15,10,23,21,41,56,78,12)
Sex=c('F','M','M','F','M','F','M','M','F','M')
Code=letters[1:10]
df=data.frame(Id,Age,Sex,Code)
df=Fun(df,1,3)
df=Fun(df,7,2)
df=Fun(df,5,10)
df

#problem 3
A=c(1:10)
B=seq(100,10,-10)
H=seq(-200,-50,along.with=B)
df=data.frame(A,B,H)

NEWDF=function(df,x,y)
{
  for (i in 1:nrow(df))
    df[i,4]=sum(x*df[1:i,1])+sum(y*df[1:i,2])
  names(df)[4]=paste('SUM',x,y,sep='_')
  df
}

NEWDF(df,3,6)
NEWDF(df,7,5)

#problem 4
FUNVector1=function(v)
{
  v=sort(v)*2
  return(v)
}
v=c(2,4,1,7,3,2,7,9)
FUNVector1(v)

#problem 5
FUNVector2=function(w)
{
  w=as.numeric(w[-which(w %in% letters)])
  w
  w=FUNVector1(w)
  return(w)
}
a=c('a','v',4,7,'q')
a=FUNVector2(a)
a
b=c(letters[1:23],10:1,letters[24:26],11:22)
b=FUNVector2(b)
b

# problem 6
ST='NAME: Maria /COUNTRY:uruguay /EMAIL: mariaUY@gmail.com'
DF=function(ST)
{
  A=unlist(strsplit(ST,'/'))
  M=rbind(unlist(strsplit(A[1],':')),unlist(strsplit(A[2],':')),unlist(strsplit(A[3],':')))
  return(M)
}
M=DF(ST)
M

# problem 7
ST=c('NAME:Maria /COUNTRY:uruguay /EMAIL:mariaUY@gmail.com','NAME:Paul/COUNTRY:UK /EMAIL:PaulUK@gmail.com','NAME:Jhon /COUNTRY:USA /EMAIL:JhonUSA@gmail.com',
     'NAME:Carlos /COUNTRY:Spain /EMAIL:CarlosSP@gmail.com')
DF2=function(V)
{
  M=DF(V[1])
  for (i in 2:length(V))
    M=cbind(M,DF(V[i])[,2])
  return(M)
}
DF2(ST)

#problem 8
DIGITS=function(X)
{
  b=0:9
  Y=b[!b%in%a]
  return(Y)
}
a=c(1,5,3,8)
DIGITS(a)

#problem 9
library('stringr')
library('stringi')
ANAGRAM=function(a,b)
{
  x=unlist(stri_extract_all(a, regex=c('\\p{L}')))
  y=unlist(stri_extract_all(b, regex=c('\\p{L}')))
  if (length(x)==length(y))
  {cond=unique(x%in%y==y%in%x)
  cat('anagram:',ifelse(length(x)==length(y) & length(cond)==1,ifelse(cond==TRUE,TRUE,FALSE),FALSE))
  }
  if (length(x)!=length(y))
    cat('anagram: FALSE')
}
a='serpent'
b='present'
ANAGRAM(a,b)
x='married'
y='admirer'
ANAGRAM(x,y)
x='Deduction'
y='Discounted'
ANAGRAM(x,y)

#Problem 10
ORDERWORD=function(a)
{
  x=unlist(stri_extract_all(a, regex=c('\\p{L}')))
  POSITION=which(letters%in%x)
  return(POSITION)
}
a='hello'
ORDERWORD(a)