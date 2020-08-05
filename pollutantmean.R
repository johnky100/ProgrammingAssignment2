pollutantmean <- function(directory, pollutant, id = 1:332){
        mylist <- list.files(path = directory, pattern = '.csv')
        x <- numeric()
        for (i in id) {
                mydata <- read.csv(mylist[i])
                x <- c(x, mydata[[pollutant]])
                
        }
        mean(x, na.rm = T)
        
}

##Console:
#> help(getwd)
#> ?getwd
#> getwd()
#[1] "C:/PROYECTO RSTUDIO/R Programming/Semana 3"
#> data <- read.csv('001.csv', header = T)
#> data <- read.csv('001.csv', header = T)
#> View(data)
#> ?list.files
#> ?numeric
#> ?read.csv
#> ?c
#> ?mean
#> source('pollutantmean.R')
#> pollutantmean('C:/PROYECTO RSTUDIO/R Programming/Semana 3')
#Show Traceback

#Rerun with Debug

#> pollutantmean('C:/PROYECTO RSTUDIO/R Programming/Semana 3', 'sulfate', 1:10)
#[1] 4.064128
#> pollutantmean('C:/PROYECTO RSTUDIO/R Programming/Semana 3', 'nitrate', 70:72)
#[1] 1.706047
#> pollutantmean('C:/PROYECTO RSTUDIO/R Programming/Semana 3', 'nitrate', 23)
#[1] 1.280833