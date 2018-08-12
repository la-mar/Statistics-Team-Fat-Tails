

# Kaggle Project - Team Fat Tails


<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

* [Kaggle Project - Team Fat Tails](#kaggle-project-team-fat-tails)
	* [Introduction](#introduction)
	* [Data Synopsis](#data-synopsis)
	* [Analysis Question 1](#analysis-question-1)
		* [Restatement of Problem](#restatement-of-problem)
		* [Build the Model](#build-the-model)
			* [Interrogate the Data](#interrogate-the-data)
			* [Fit the Model](#fit-the-model)
			* [Check Assumptions](#check-assumptions)
				* [Homogeneity of Variances](#homogeneity-of-variances)
				* [Normality](#normality)
				* [Residual Diagnostics](#residual-diagnostics)
				* [Outlier Analysis](#outlier-analysis)
			* [Model Comparison](#model-comparison)
				* [No Interactions](#no-interactions)
				* [With Interactions](#with-interactions)
				* [ANOVA Comparison](#anova-comparison)
				* [Adj R2](#adj-r2)
				* [Parameters & Equations](#parameters-equations)
				* [Conclusion](#conclusion)
	* [Analysis Question 2](#analysis-question-2)
		* [Restatement of Problem](#restatement-of-problem-1)
		* [Model Selection](#model-selection)
		* [Checking Assumptions](#checking-assumptions)
		* [Comparing Competing Models](#comparing-competing-models)
			* [Check Assumptions](#check-assumptions-1)
				* [Homogeneity of Variances](#homogeneity-of-variances-1)
				* [Normality](#normality-1)
				* [Residual Diagnostics](#residual-diagnostics-1)
				* [Outlier Analysis](#outlier-analysis-1)
	* [Appendix A](#appendix-a)
			* [SAS Program](#sas-program)
			* [main.sas](#mainsas)
			* [dataimport.sas](#dataimportsas)
			* [procmeans.sas](#procmeanssas)
			* [analysis1_model1.sas](#analysis1_model1sas)
	* [Appendix B](#appendix-b)
	* [Appendix C](#appendix-c)

<!-- /code_chunk_output -->









## Introduction

---

Ask a home buyer to describe their dream house, and they probably won't begin with the height of the basement ceiling or the proximity to an east-west railroad.   However, it is essential to review the data because it proves that there are many other influences in price negotiations than the number of bedrooms or a white-picket fence.



---

## Data Synopsis

<!-- 
Where did the data come from?  How big is it? 



How many observations?  Where can we find out more?  



What are the specific variables that we need to know with respect to your analysis?



 -->

The Ames House dataset was compiled by Dean De Cock and contains 79 explanatory variables describing almost every aspect of residual home in Ames Iowa from 2006 to 2010. The data set contains 2930 observations involved in assessing home values.

<!-- TODO: Fix html import -> titles are hidden, not removed, in SAS html output -->

@import "../figs/procmeans.html"

* [More data definitions](#appendix-b)

---

## Analysis Question 1

<!--
1)	ANALYSIS 1: Assume that Century 21 Ames (a real estate company) in Ames, Iowa has commissioned you to answer a very important question with respect to their business.  Century 21 Ames only sells houses in the NAmes, Edwards and BrkSide neighborhoods and would like to simply get an estimate of how the SalePrice of the house is related to the square footage of the living area of the house (GrLIvArea) and if the SalesPrice (and its relationship to square footage) depends on which neighborhood the house is located in. Build and fit a model that will answer this question, keeping in mind that realtors prefer to talk about living area in increments of 100 sq. ft. Provide your client with the estimate (or estimates if it varies by neighborhood) as well as confidence intervals for any estimate(s) you provide. It turns out that Century 21’s leadership team has a member that has some statistical background. Therefore, make sure and provide evidence that the model assumptions are met and that any suspicious observations (outliers / influential observations) have been identified and addressed. Finally, of course, provide your client with a well written conclusion that quantifies the relationship between living area and sale price with respect to these three neighborhoods. Remember that the company is only concerned with the three neighborhoods they sell in.  


Variables:
---------------
Neighborhood: Physical locations within Ames city limits
GrLivArea: Above grade (ground) living area square feet


Neighborhoods:
---------------
field_name : full_name
NAmes =	North Ames
Edwards =	Edwards
BrkSide =	Brookside

-->

<!-- * Plot the data.
* Develop a tentative model(s).
    * Using the question(s) of interest (QOI).
    * Accounting for confounders.
    * Accounting for relationships ($X^2$,$X^3$, $etc$).
* Fit the model(s).
* Evaluate residual plots.
    * Constant SD.
    * Normality and zero me an.
    * Identify any influential observations. -->


### Restatement of Problem

<!-- 
a.	EstimateL SalePrice relation to Square Footage. Are they related? Does the strength of relationship vary by neighborhood??
  i.	Address assumptions
  ii.	Provide an estimate and confidence interval
  iii.	Address suspicious observations
  iv.	Conclusion reported in increments of 100 sq.ft.
-->

To build and fit a model, an analysis must be performed to identify features of the dataset that are statistically significant in their relation to, and prediction of, the sales price.

### Build the Model


---

<!-- ##@import "../figs/analysis1_model1.html" -->

---

#### Interrogate the Data

To build and fit a model, an analysis must be performed to identify features of the dataset that are statistically significant in their relation to, and prediction of, the sales price.


<!-- ##TODO: Why did we filter down to only the neighborhoods of interest? -->
  - QOI: this is where century targets.


<!--## TODO:  split original and logged side by side-->
  - We chose to log both variables because of the graphs below, and other words.

<!-- ![train_cleansed_scatterplotmatrix](../figs/train_cleansed_scatterplotmatrix.png) -->


 <!-- TODO: Confounders? -->

#### Fit the Model

<!-- TODO: Regression Fit -->

@import "../figs/analysis1_solution.html"

#### Check Assumptions

##### Homogeneity of Variances

![train_original_histogram_salesprice](../figs/train_original_diagnostics.png)

<!-- TODO: Add interpretation -->

##### Normality

Solarized dark             |  Solarized Ocean
:-------------------------:|:-------------------------:
![train_original_histogram_salesprice](../figs/train_original_histogram_salesprice.png)  |  ![train_original_histogram_salesprice](../figs/train_original_histogram_salesprice.png)

<!-- TODO: Add interpretation -->

##### Residual Diagnostics

<!-- TODO: Add interpretation and plots -->

##### Outlier Analysis

<!-- Influential point analysis (Cook’s D and Leverage) -->

<!-- TODO: Leverage Plot and Cooks D plot from outlier_analysis.sas -->

<!-- TODO: Add interpretation -->


---

#### Model Comparison


##### No Interactions

<!-- TODO: Equation -->

<!-- TODO: Fit Plot -->

##### With Interactions

<!-- TODO: Equation -->

<!-- TODO: Fit Plot -->

##### ANOVA Comparison

<!-- TODO: Low Priority -->

##### Adj R2

<!-- TODO: Compare Adj R^2-->


##### Parameters & Equations
      - Estimates
      - Interpretation 
      - Confidence Intervals 


Neighborhooods:
$x_1 = BrkSide = Brookside
$x_2 = NAmes$ = Ames
$x_3 = Edwards = Edwards

Variables:
SalesPrice = SP
LivingArea = LA


<!-- $\hat\mu \{ {SP_{log}} \} \, = \, \beta_0\, +\, \beta_1 \, \, BrkSide\, +\, \beta_2\,Edwards\, +\, \beta_3\, \, Ames\, +\, \beta_4(LivingArea_{log}\, \, BrkSide) + \beta_{5}\, x\, (LivingArea_{log} \, \, Edwards)$ -->



---

**General Formula:**

$$
\hat\mu \{ {log(SP)} \}
\,=\,
\beta_0\,
+\,\beta_1\,Brookside\,
+\,\beta_2\,Edwards\,
+\,\beta_3\,Ames\,
+\,\beta_4(log(LA)\,Brookside)
+\beta_{5}\,(log(LA)\,Edwards)
$$

---

**Ames (North):**

$$
\hat\mu \{ {log(SP_{Ames})} \}
\,=\,
\beta_0\,
+\,\beta_1\,Brookside\,
+\,\beta_2\,Edwards\,
+\,\beta_3\,Ames\,
+\,\beta_4(log(LA)\,Brookside)
+\beta_{5}\,(log(LA)\,Edwards)
$$

---

**Brookside:**

$$
\hat\mu \{ {log(SP_{Brookside})} \}
\,=\,
\beta_0\,
+\,\beta_1\,Brookside\,
+\,\beta_2\,Edwards\,
+\,\beta_3\,Ames\,
+\,\beta_4(log(LA)\,Brookside)
+\beta_{5}\,(log(LA)\,Edwards)
$$

---

**Edwards:**

$$
\hat\mu \{ {log(SP_{Edwards})} \}
\,=\,
\beta_0\,
+\,\beta_1\,Brookside\,
+\,\beta_2\,Edwards\,
+\,\beta_3\,Ames\,
+\,\beta_4(log(LA)\,Brookside)
+\beta_{5}\,(log(LA)\,Edwards)
$$

---


<!-- TODO: Add regression equations for NAmes neighborhood -->

<!-- $$\hat\mu \{ {log(SP_{Ames})} \} \, = \, \beta_0\, +\, \beta_1 \, \, BrkSide\, +\, \beta_2\,Edwards\, +\, \beta_3\, \, NAmes\, +\, \beta_4(LivingArea_{log}\, \, BrkSide) + \beta_{5}\, x\, (LivingArea_{log} \, \, Edwards)$$ -->


<!-- TODO: Add regression equations for Brkside neighborhood -->
<!-- 
$$
\hat\mu \{ {log(SP_{BrkSide})} \}
\,=\,
\beta_0\,
+\,\beta_1\,Brookside\,
+\,\beta_2\,Edwards\,
+\,\beta_3\,Ames\,
+\,\beta_4(log(LA)\,Brookside)
+\beta_{5}\,(log(LA)\,Edwards)
$$ -->

<!-- TODO: Add regression equations for Edwards neighborhood -->

<!-- $$\hat\mu \{ {log(SP_{Edwards})} \} \, = \, \beta_0\, +\, \beta_1 \, \, BrkSide\, +\, \beta_2\,Edwards\, +\, \beta_3\, \, NAmes\, +\, \beta_4(LivingArea_{log}\, \, BrkSide) + \beta_{5}\, x\, (LivingArea_{log} \, \, Edwards)$$ -->


##### Conclusion

<!--
Potential Objectives:
-  ~~Adjusting for a large set of explanatory variables.~~ - NO
-  ~~Fishing for an explanation.~~ - NO
-  Prediction - YES
-->

<!--
Are we attempting to predict the mean or a single value?
-  Mean - YES
-  ~~Specific Value~~ - NO
-->
<!-- To interpret the model, a change in Living Room Square Feet Is a 10-fold increase.  For the neighborhood with approximately the same mass, it is estimate that a 10-fold increase in the Living Room Square feet is associated with a (2^-2.58 = 0.167) which is a 83.2% increase in the median Sales Price of the neighborhood. (P value < 0.001).  At a 95% confidence intervals for the increase in sales price of (2^-3.76, 2^-1.4) = (0.074, 0.38) which equates to an estimated increase between % and 860%.

The predicted median of Names sales price with a living room space of 1 ft^2 = $4865. Doubling the living room space multiplies the predicted median Names sales price by 2^0.47 = 1.38510946811. In other words, it increases by 38%. For 100 ft^2 in Names, the sales price would be $42,379. -->

<!-- TODO: Fit numbers from excel sheet into interpretation here. -->

Prediction mean sales price by neighborhood.

 To interpret the model, a change in Living Room Square Feet is a doubled increase.  For the neighborhood with approximately the same mass, it is estimate that a 10-fold increase in the Living Area Square feet is associated with a XX which is a 83.2% increase in the median Sales Price of the neighborhood. (P value < 0.001).  At a 95% confidence intervals for the increase in sales price of XX = CI which equates to an estimated increase between X% and X%.

<!-- TODO: Add verbage -->

<!-- TODO: Add regression plots -->

---

## Analysis Question 2

<!-- 
2)	ANALYSIS 2: Build the most predictive model for sales prices of homes in all of Ames Iowa.  This includes all neighborhoods. Your group is limited to only the techniques we have learned in 6371 (no random forests or other methods we have not yet covered).  Specifically, you should produce 4 models: one from forward selection, one from backwards elimination, one from stepwise selection, and one that you build custom.  The custom model could be one of the three preceding models or one that you build by adding or subtracting variables at your will.  Generate an adjusted R2, CV Press and Kaggle Score for each of these models and clearly describe which model you feel is the best in terms of being able to predict future sale prices of homes in Ames, Iowa.  In your paper, please include a table similar to the one below.  The group with the lowest public Kaggle score will receive an extra 3 bonus points on the final exam!   -->
<!-- Quick note on Kaggle completion:  We only have one course under our belts so far (almost), but you can compete in this competition with the tools you have now (top 40th percentile or better!). After your next course (6372), you will really be able to do well (top 25th percentile or better!). With these skills as well as the skills you pick up in Data Mining and Quantifying the World, you will be able to compete with anyone!	 

| Predictive Models | Adjusted R2 | CV PRESS | Kaggle Score |
|-------------------|-------------|----------|--------------|
| Forward           | .89         | 1272     | .721         |
| Backward          | .78         | 1590     | .945         |
| Stepwise          | .81         | 2001     | .888         |
| CUSTOM            | .87         | 900      | .2345        |
-->



<!-- 
NOTE 1: 
ALL ANALYSES MUST BE DONE IN SAS and all code must be placed in the appendix.  Part of the grading process will be to run the code and verify the Kaggle score for each group.

Note 2: 
An extra 3 points on the final exam will be awarded to the team with the model with the lowest (best) Kaggle Score.  In the unlikely event of a tie will split these points.  

Deliverables:
Your group is to turn in a paper should be no more than 7 pages long (without the appendix). Please put your code in the appendix. If you are concerned with staying within the allotted 7 pages, put more screenshots and such in the appendix.
 -->




### Restatement of Problem 




### Model Selection
		Type of Selection
			Stepwise

<!-- Data: All Neighborhoods
     



 -->



Forward - Starts empty, incrementally adds variables
Backward - Starts full, incrementally removes variables.
Stepwise - ???, More random. Can add or remove until it finds the best score.
Custom -  ???






### Checking Assumptions 
			Residual Plots
			Influential point analysis (Cook’s D and Leverage)
			Make sure to address each assumption
      
      <!-- TODO: Scatterplot matrix of all variables used in any of the models. Add these to the appendix. -->



### Comparing Competing Models
			Adj R2   
			Internal CV Press   
			Kaggle Score 


		Conclusion: A short summary of the analysis.  



#### Check Assumptions

<!-- The model must have: 1) Linearity, 2) Residuals are normally distributed, 3) Independence, 4) Errors should have mean of 0 and have the same variance, 5) Equal SD: There is little evidence from the scatter plots of heteroscedasticity, 6) Normality of scatter plot, qq plot, and histogram of residuals -->



##### Homogeneity of Variances

<!-- TODO: Add plots -->

<!-- TODO: Add interpretation -->

##### Normality

<!-- TODO: Add plots -->

<!-- TODO: Add interpretation -->

##### Residual Diagnostics

<!-- TODO: Add plots -->

<!-- TODO: Add interpretation and plots -->

##### Outlier Analysis

<!-- The rstudent values have the majority of the data within range of the limits, with the center value as 0 (4). There are some data points still causing leverage in the data. The cook’s D has some data points that would influence the linear regression of the data, but when doing further exploration, those data points are not caused by the 3 neighborhoods that we are trying to analyze. -->

<!--  -->

Kaggle Score for stepwise submission:  0.14880
Kaggle Score for forward elimination:  0.14880
Kaggle score for backward elimination:  0.21225


## Appendix A

<!--TODO: Add links from graphics in document to code segments -->

#### SAS Program 


<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

* [Kaggle Project - Team Fat Tails](#kaggle-project-team-fat-tails)
	* [Introduction](#introduction)
	* [Data Synopsis](#data-synopsis)
	* [Analysis Question 1](#analysis-question-1)
		* [Restatement of Problem](#restatement-of-problem)
		* [Build the Model](#build-the-model)
			* [Interrogate the Data](#interrogate-the-data)
			* [Fit the Model](#fit-the-model)
			* [Check Assumptions](#check-assumptions)
				* [Homogeneity of Variances](#homogeneity-of-variances)
				* [Normality](#normality)
				* [Residual Diagnostics](#residual-diagnostics)
				* [Outlier Analysis](#outlier-analysis)
			* [Model Comparison](#model-comparison)
				* [No Interactions](#no-interactions)
				* [With Interactions](#with-interactions)
				* [ANOVA Comparison](#anova-comparison)
				* [Adj R2](#adj-r2)
				* [Parameters & Equations](#parameters-equations)
				* [Conclusion](#conclusion)
	* [Analysis Question 2](#analysis-question-2)
		* [Restatement of Problem](#restatement-of-problem-1)
		* [Model Selection](#model-selection)
		* [Checking Assumptions](#checking-assumptions)
		* [Comparing Competing Models](#comparing-competing-models)
			* [Check Assumptions](#check-assumptions-1)
				* [Homogeneity of Variances](#homogeneity-of-variances-1)
				* [Normality](#normality-1)
				* [Residual Diagnostics](#residual-diagnostics-1)
				* [Outlier Analysis](#outlier-analysis-1)
	* [Appendix A](#appendix-a)
			* [SAS Program](#sas-program)
			* [main.sas](#mainsas)
			* [dataimport.sas](#dataimportsas)
			* [procmeans.sas](#procmeanssas)
			* [analysis1_model1.sas](#analysis1_model1sas)
	* [Appendix B](#appendix-b)
	* [Appendix C](#appendix-c)

<!-- /code_chunk_output -->

<!-- TODO: Add comments to all code chunk -->

#### main.sas

@import "main.sas"

#### dataimport.sas

@import "dataimport.sas"

#### procmeans.sas

@import "procmeans.sas"

#### analysis1_model1.sas

@import "analysis1_model1.sas"


## Appendix B

<!-- TODO: Link here from data description section -->

<!-- TODO: re-add this import -->

@import "../data/data_description.md"


## Appendix C

**[Downloading from the Kaggle API](dev/kaggle-download.md)**

**[Using Code Blocks in Markdown](https://github.com/shd101wyy/markdown-preview-enhanced/blob/master/docs/code-chunk.md)**

**[Using SAS in Markdown Code Blocks](dev/sasmarkdown.Rmd)**




