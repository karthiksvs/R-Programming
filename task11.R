my.hills<-read.table("hills.txt",header=TRUE) 
# read a text file into data frame
head(my.hills, n=3)                                      
# same as 'hills' from MASS

Year<-c(1800,1850,1900,1950,2000)             
Carbon<-c(8,54,534,1630,6611)                 
write.table(                                 
  # write a data frame into a csv file
  data.frame(year=Year,carbon=Carbon),        
  # most spreadsheet can export/import csv files
  file="fuel.csv",row.names=F,sep=",")
fossifuel<-read.csv("fuel.csv")               
# reverse action
fossifuel  						    
# return a data frame storing the data
fossifuel<-read.table("fuel.csv",             
                      # the same
                      header=TRUE,sep=",")    
# read a text file with columns separated 
fossifuel					          
# by commas into a data frame

write(Carbon,file="Carbon.txt")              
# write a vector into a text file
scan("Carbon.txt")                           
# read a text file into a vector

matrix(1:10,ncol=2)
write(matrix(1:10,ncol=2),file="x.mat.txt")   
# write a matrix into a text file, 
# ATTENTION:columns become rows
scan("x.mat.txt")                             
# ATTENTION: it creates a vector
matrix(scan("x.mat.txt"),ncol=2)              
# to get back a matrix use 'matrix()' 

x<-c(1)
data.entry(x)					    
# spreadsheet interface for editing data
a.df<-data.frame()                           
# dummy data frame
fix(a.df)                                     
# make permanent changes to a.df
a.df
edit(a.df)                                    
# 'edit' does not change the object 'a.df'
# instead, a copy is made and that copy 
# is changed 
library(MASS)                                 
# attach the package MASS 
# all data set of MASS are now accessible
hills                                         
# display the contents of the data frame "hills"
average<-sapply(hills,mean)                          
# arithmetic means of the three columns of data
average                                       
# print the content of the object 'average'
range(hills$time)                             
# range of the values in the vector 'time'
plot(time ~ dist, data=hills, pch=16)         
# plot the data
out<-lm(time ~ dist, data=hills)              
# fit the simple linear model: 
# time=b_0+b_1*dist+error 
summary(out)                                  
# show results of regression
plot(out)                                     
# display of regression fitting and diagnostics
b<-out$coeff                                  
# estimates of coefficients
plot(time ~ dist, data=hills, pch=16) 
abline(b[1],b[2],col=2)                       
# actual data vs fitted regression line
# first argument = intercept,
# second argument = slope
points(average[1],average[3],
       pch=17,col=2,cex=1.5)                  
# plot average values of 'dist' and 'time'
abline(v=average[1],lty=2)                    
## v = vertical line at mean(dist), lty tratteggita
abline(h=average[3],lty=2)                    
## h = horizontal line at mean(time)
