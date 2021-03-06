---
title: 'Unit 12 - Homework'
author: '| Grant Bourzikas | Quinton Nixon | Brock Friedrich'
date: ' ```r format(Sys.time(), ''%B %d, %Y'')```'
output:
    pdf_document: {df_print: kable, toc: yes}
    html_document: {df_print: kable, toc: yes}
    markdown: {df_print: kable, toc: yes}
geometry: margin=1in
header-includes:
    - '\usepackage{amsmath}'
    - '\usepackage{mathtools}'
    - '\usepackage{float}'
    - '\usepackage{xcolor,pifont}'
    - '\usepackage{ulem}'
    - '\newcommand{\cmark}{\Large\textcolor{green}{\ding{52}}}'
    - '\newcommand{\xmark}{\Large\textcolor{red}{\ding{55}}}'
    - '\definecolor{answercolor}{RGB}{35,155,86}'
    - '\newcommand{\answerblock}{\textcolor{answercolor}}'
fontsize: 11pt
fontfamily: palatino
---  
  
  
  
  
**[Downloading from the Kaggle API](C:/Repositories/Statistics-Team-Fat-Tails/kaggle-download.md )**
**[Using Code Blocks in Markdown](https://github.com/shd101wyy/markdown-preview-enhanced/blob/master/docs/code-chunk.md )**
**[Using SAS in Markdown Code Blocks](C:/Repositories/Statistics-Team-Fat-Tails/sasmd.Rmd )**
  
  
  
Find more markdown snippits
  
  
# Introduction
  
  
```r
#setup, echo=FALSE, results="hide"}
# read setup script
#source("Setup.R")
print("hello world!!!")
```
  
```python
print("Verbose will be printed first")
```
  
--------------------------------------------------------------------------------------------------------------
  
Ask a home buyer to describe their dream house, and they probably won't begin with the height of the basement ceiling or the proximity to an east-west railroad.   However, it is essential to review the data because it proves that there are many other influences in price negotiations than the number of bedrooms or a white-picket fence.
  
  
  
--------------------------------------------------------------------------------------------------------------
  
# Data Synopsis
  
  
The Ames House dataset was compiled by Dean De Cock and contains 79 explanatory variables describing almost every aspect of residual home in Ames Iowa from 2006 to 2010. The data set contains 2930 observations involved in assessing home values.
  
--------------------------------------------------------------------------------------------------------------
  
# Analysis Question 1
  
  
  
  
  
  
## Restatement of Problem
  
  
  
  
  
To build and fit a model, an analysis must be performed to identify features of the dataset that are statistically significant in their relation to, and prediction of, the sales price.
  
## Build and Fit the Model
  
  
### Interrogate the Data
  
  
To build and fit a model, an analysis must be performed to identify features of the dataset that are statistically significant in their relation to, and prediction of, the sales price.
  
  
- Plot the data.
- Develop a tentative model(s).
    - Using the question(s) of interest (QOI).
    - Accounting for confounders.
    - Accounting for relationships (<img src="https://latex.codecogs.com/gif.latex?X^2"/>,<img src="https://latex.codecogs.com/gif.latex?X^3"/>, <img src="https://latex.codecogs.com/gif.latex?etc"/>).
- Fit the model(s).
- Evaluate residual plots.
    - Constant SD.
    - Normality and zero me an.
    - Identify any influential observations.
  
  
#### Assumptions
  
  
![train_original_histogram_salesprice](Figs/train_original_histogram_salesprice.png )
  
##### Homogeneity of Variances
  
  
![train_original_histogram_salesprice](Figs/train_original_diagnostics.png )
  
  
  
  
  
  
  
  
  
  
Neighborhooods:
<img src="https://latex.codecogs.com/gif.latex?x_1%20=%20BrkSide"/>
<img src="https://latex.codecogs.com/gif.latex?x_2%20=%20NAmes"/>
<img src="https://latex.codecogs.com/gif.latex?x_3%20=%20Edwards"/>
  
•	Ames^SalesPrice = B0 + B1*BrkSide + B2*Edwards + B3*NAmes + B4(LogLivingArea*BrkSide) + B5(LogLivingArea*Edwards)
  
<img src="https://latex.codecogs.com/gif.latex?&#x5C;hat&#x5C;mu%20&#x5C;{%20{SalesPrice}%20&#x5C;}%20&#x5C;,%20=%20&#x5C;,%20&#x5C;beta_0&#x5C;,%20+&#x5C;,%20&#x5C;beta_1%20&#x5C;,%20x%20&#x5C;,%20BrkSide&#x5C;,%20+&#x5C;,%20&#x5C;beta_2&#x5C;,Edwards&#x5C;,%20+&#x5C;,%20&#x5C;beta_3&#x5C;,%20*&#x5C;,%20NAmes&#x5C;,%20+&#x5C;,%20&#x5C;beta_4(LivingArea_{log}&#x5C;,%20x&#x5C;,%20BrkSide)%20+%20&#x5C;beta_{5}&#x5C;,%20x&#x5C;,%20(LivingArea_{log}%20&#x5C;,%20x&#x5C;,%20Edwards)"/>
  
  
<img src="https://latex.codecogs.com/gif.latex?&#x5C;mu&#x5C;{&#x5C;widehat{SalesPrice_{Ames}}&#x5C;}%20&#x5C;,%20=%20&#x5C;,%20&#x5C;beta_0&#x5C;,%20+&#x5C;,%20&#x5C;beta_1%20&#x5C;,%20x%20&#x5C;,%20BrkSide&#x5C;,%20+&#x5C;,%20&#x5C;beta_2&#x5C;,Edwards&#x5C;,%20+&#x5C;,%20&#x5C;beta_3&#x5C;,%20*&#x5C;,%20NAmes&#x5C;,%20+&#x5C;,%20&#x5C;beta_4(LivingArea_{log}&#x5C;,%20x&#x5C;,%20BrkSide)%20+%20&#x5C;beta_{5}&#x5C;,%20x&#x5C;,%20(LivingArea_{log}%20&#x5C;,%20x&#x5C;,%20Edwards)"/>
  
  
% •	Ames^SalesPrice = 8.49 + (-2.58*BrkSide) + (-0.49*Edwards)  + (0.0 * NAmes) + (B3*0.0) + B4(0.47*BrkSide) + B5(0.47*Edwards)
  
  
  
  
  
  
  
  
  
  
--------------------------------------------------------------------------------------------------------------
# Analysis Question 2
  
  
  
  
  
  
  