require(rmarkdown)
setwd('./Statistics-Team-Fat-Tails')
getwd()
options(browser = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe")
rmarkdown::render('Analysis.Rmd')
browseURL('Analysis.pdf', browser = getOption("browser"))
# browseURL('Analysis.html')



