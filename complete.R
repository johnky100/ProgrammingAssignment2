complete <- function(directory, id = 332){
        mylist <- list.files(path = directory, pattern = '.csv')
        nobs <- numeric()
        for (i in id) {
                mydata <- read.csv(mylist[i])
                mysum <- sum(complete.cases(mydata))
                nobs <- c(nobs, mysum)
        }
        data.frame(id, nobs)
}

#Console:

#> data <- read.csv('115.csv', header = T)
#> View(data)
#> getwd()
#[1] "C:/PROYECTO RSTUDIO/R Programming/Semana 3"
#> source('complete.R')
#Se Ejecuta la funs complete en la line 1

#> complete("C:/PROYECTO RSTUDIO/R Programming/Semana 3", 1)
#  id nobs
#1  1  117

#> complete("C:/PROYECTO RSTUDIO/R Programming/Semana 3", c(2, 4, 6, 8, 10))
#id nobs
#1  2 1041
#2  4  474
#3  6  228
#4  8  192
#5 10  148

#> complete("C:/PROYECTO RSTUDIO/R Programming/Semana 3", 30:25)
#id nobs
#1 30  932
#2 29  711
#3 28  475
#4 27  338
#5 26  586
#6 25  463
#> complete("C:/PROYECTO RSTUDIO/R Programming/Semana 3", 3)
#id nobs
#1  3  243