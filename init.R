require(rmarkdown)
setwd('./Statistics-Team-Fat-Tails')
getwd()
options(browser = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe")

rmarkdown::render('Analysis.Rmd', 'pdf_document')
browseURL('Analysis.pdf', browser = getOption("browser"))


rmarkdown::render('Analysis.Rmd', 'html_document')
browseURL('Analysis.html', browser = getOption("browser"))

