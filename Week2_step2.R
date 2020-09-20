directory1 <- getwd()
filelist = list.files(path = directory1, pattern = ".csv", full.names = T)
nobs = numeric()
id = numeric()
complete <- function(directory = directory1, ids = 1:332) {   
     for (i in ids) {
        dataz = read.csv(filelist[i])
        z = complete.cases(dataz)
        id <- c(id, i)
        nobs <- c(nobs, sum(z))
     } 
     complete_DF <- data.frame(id, nobs)
     print(complete_DF) 
}
 