require(rmarkdown)
setwd('./Statistics-Team-Fat-Tails')
getwd()

rmarkdown::render('Analysis.Rmd')
browseURL('Analysis.html')

