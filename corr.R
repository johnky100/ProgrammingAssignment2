corr <- function(directory, threshold = 0) {
        mylist <- list.files(path = directory, pattern = '.csv')
        df <- complete(directory)
        ids <- df[df['nobs'] > threshold, ]$id
        corr <- numeric()
        for (i in ids) {
                mydata <- read.csv(mylist[i])
                dff <- mydata[complete.cases(mydata), ]
                corr <- c(corr, cor(dff$sulfate, dff$nitrate))
        }
        return(corr)
}
