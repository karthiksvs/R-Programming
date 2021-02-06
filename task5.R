#problem 1
data <- read.csv("F:/MSIT/R Programming/student.csv")
print(data)
#problem 2
head(data,5)
#problem 3

install.packages(c("dbplyr", "RSQLite"))
dir.create("data_raw", showWarnings = FALSE)
download.file(url = "https://ndownloader.figshare.com/files/2292171",
              destfile = "data_raw/portal_mammals.sqlite", mode = "wb")
library("dplyr")
library("dbplyr")
download.file("https://ndownloader.figshare.com/files/3299483",
              "F:/MSIT/R Programming/student.csv")
mammals <- DBI::dbConnect(RSQLite::SQLite(), "data_raw/portal_mammals.sqlite")
src_dbi(mammals)

tbl(mammals, sql("SELECT id, name, score, percentage FROM student"))

student <- tbl(mammals, "student")
student %>%
  select(id, name, score, percentage)

nrow(student)