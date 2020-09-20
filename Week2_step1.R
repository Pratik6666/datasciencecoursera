directory1<-getwd()
pollutantmean <- function(directory = directory1 , pollutant, id=1:332){
  filelist = list.files(path = directory, pattern = ".csv", full.names = T)
  values <- numeric()
  
  for (i in id) {
      datax <- read.csv(filelist[i])
      values <- c(values,datax[[pollutant]])
  }
  mean(values, na.rm = T)
}