complete <- function(directory, id = 1:332) {
  filelist <- list.files(path = directory, pattern = ".cvs", full.names = T)
  nobs <- numeric()
  
  for (i in id) {
    data <- read.csv(file.list[i])
    nobs <- c(nobs, complete.cases(data))
  }
  
  data.frame(id, nobs)
}