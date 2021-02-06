#problem 2

data()
# Loading
data(mtcars)
# Print the first 6 rows
head(mtcars, 6)
?mtcars
# 1. Loading 
data("mtcars")
# 2. Print
head(mtcars)
# Number of rows (observations)
  nrow(mtcars)
# Number of columns (variables)
ncol(mtcars)
?mtcars
data("iris")
head(iris)
data("ToothGrowth")
head(ToothGrowth)
data("PlantGrowth")
head(PlantGrowth)
data("USArrests")
head(USArrests)

#problem 3
library("tidyverse")
surveys_complete <- read_csv("data/surveys_complete.csv")
ggplot(data = surveys_complete)
ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))
ggplot(data = surveys_complete, aes(x = weight, y = hindfoot_length)) +
geom_point()
