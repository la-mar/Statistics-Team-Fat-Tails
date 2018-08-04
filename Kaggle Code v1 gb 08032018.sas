** URL for Kickoff **
https://www.youtube.com/watch?v=0QJtczDPxZQ
;
** Review Data;
**proc print data = train;
**run;

**proc print data = test;
**run;

** Add SalePrice to Dataset and Review;
data test;
set test;
SalePrice = .;
run;

**proc print data = test;
**run;

** Consolidate Train & Test Files Together and Review Data;
data train2;
set train test;
run;

**proc print data = train2;
**run;

** Transform Great Living Room to Log and put into LogTrain2;
** Doesn't appear to need transformation;
**data logtrain2;                                                                                                                       
**set train2;   
**logGrLIvArea = log(GrLIvArea);
**run;

** Round Great Living Room ;
data train3;                                                                                                                       
set train2;   
rGrLIvArea = round(GrLIvArea, 100);
run;

**proc print data = train3;
**var GrLIvArea rGrLIvArea;
**run;

** Select only Century 21 Homes - NAmes, Edwards, BrkSide;
data train4;                                                                                                                       
set train3;   
if Neighborhood in ("NAmes", "Edwards", "BrkSide");
run;

**proc print data = train4;
**run;

**Print Header to get Field Names;
**proc print date = train4 (obs=15);
**run;

********************************************************************
Begin Analysis of only Century 21 Data
Data Summary
	Train4 - Century 21 Only 
	Train3 - Rounded Data for GrLIvArea
	Train2 - Consolidated Data
********************************************************************;
proc sgscatter data = train3;
matrix SalePrice rGrLIvArea / diagonal=(histogram);
run;
proc print data = train3;
run;

proc sgplot data = train4;
title "House Data NoLog with Regression Lines";
reg x = rGrLIvArea y=SalePrice / group=Neighborhood;
run;

proc reg data = train4;
model SalePrice = rGrLIvArea  / vif;
run;

proc reg data = train4;
model SalePrice = rGrLIvArea _1stFlrSF LotArea OverallQual  / vif;
run;

** Get the Mean of SalePrice --> 138062.501;
proc univariate data=train4; var Saleprice; run;


*********************************************************************************
**Question #1
*********************************************************************************;

** Model Attempt #Q1p1 -  18 Dependent Variables with P value less than 0.15 from Neighborhood - Full Set - RMSE 21880.22;
proc glm data = train4 plots = all;
class Neighborhood(ref='NAmes');
model SalePrice = Neighborhood OverallQual rGrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  solution clm;
output out = resultq1p1 p = Predict;
run;

** Model Attempt #q1p2 - All Model Data  ;
proc reg data = train4 plots = all;
model SalePrice =   MSSubClass LotArea OverallQual OverallCond MasVnrArea 
	BsmtFinSF1 BsmtFinSF2 BsmtUnfSF TotalBsmtSF _1stFlrSF rGrLivArea BsmtFullBath 
	BsmtHalfBath FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
	GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF EnclosedPorch _3SsnPorch 
	ScreenPorch PoolArea MiscVal MoSold / vif;
output out = resultsq1p2 p = Predict;
run;

** Model Attempt #q1p2b - All Model Data  ;
proc reg data = train4 plots = all;
model SalePrice =  MSSubClass LotArea OverallQual OverallCond MasVnrArea 
	BsmtFinSF1 BsmtFinSF2 BsmtUnfSF TotalBsmtSF _1stFlrSF rGrLivArea BsmtFullBath 
	BsmtHalfBath FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
	GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF EnclosedPorch _3SsnPorch 
	ScreenPorch PoolArea MiscVal MoSold / vif;
output out = resultsq1p2b p = Predict;
run;

** Model Attempt #q1p2d - All Model Data - RMSE 21362.09 ;
proc glm data = train4 plots = all;
class Neighborhood;
model SalePrice =  Neighborhood MSSubClass LotArea OverallQual OverallCond MasVnrArea 
	BsmtFinSF1 BsmtFinSF2 BsmtUnfSF TotalBsmtSF _1stFlrSF rGrLivArea BsmtFullBath 
	BsmtHalfBath FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
	GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF EnclosedPorch _3SsnPorch 
	ScreenPorch PoolArea MiscVal MoSold / solution clm;
output out = resultsq1p2d p = Predict;
run;

** Model Attempt #q1p2e - rGrLivArea Neighborhood - RMSE - 29686.10;
proc glm data = train4 plots = all;
class Neighborhood;
model SalePrice =  rGrLivArea Neighborhood/ solution clm;
output out = resultsq1p2e p = Predict;
run;

** Model Attempt #q2p1a - rGrLivArea Neighborhood - RMSE - 19524.44;
proc glm data = train4 plots = all;
class Neighborhood HouseStyle MSSubClass GarageType ;
model SalePrice =  rGrLivArea Neighborhood HouseStyle MSSubClass GarageType LotArea OverallQual OverallCond MasVnrArea 
		BsmtFinSF1 BsmtFinSF2 BsmtUnfSF TotalBsmtSF _1stFlrSF rGrLivArea BsmtFullBath 
		BsmtHalfBath FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
		GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF EnclosedPorch _3SsnPorch 
		ScreenPorch PoolArea MiscVal MoSold / solution clm;
	output out = resultsq2p1a p = Predict;
run;

** Model Attempt #q2p1b - rGrLivArea Neighborhood - RMSE - 19491.88;
proc glm data = train4 plots = all;
class Neighborhood HouseStyle MSSubClass GarageType ;
model SalePrice =  rGrLivArea Neighborhood HouseStyle MSSubClass GarageType LotArea OverallQual OverallCond MasVnrArea 
		BsmtFinSF1 BsmtFinSF2 BsmtUnfSF TotalBsmtSF _1stFlrSF rGrLivArea BsmtFullBath 
		BsmtHalfBath FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
		GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF EnclosedPorch _3SsnPorch 
		ScreenPorch PoolArea / solution clm;
	output out = resultsq2p1b p = Predict;
run;

** Model Attempt #q2p1c - rGrLivArea Neighborhood - RMSE - 19387.59;
proc glm data = train4 plots = all;
class Neighborhood HouseStyle MSSubClass GarageType ;
model SalePrice =  rGrLivArea Neighborhood HouseStyle MSSubClass GarageType LotArea OverallQual OverallCond MasVnrArea 
		BsmtFinSF1  BsmtUnfSF TotalBsmtSF _1stFlrSF rGrLivArea BsmtFullBath 
		FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
		GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF  
		ScreenPorch  / solution clm;
	output out = resultsq2p1c p = Predict;
run;

proc print data = resultsq1p2e;
run;


data result_Ans;
set resultq1p1;
if Predict > 0 then SalePrice = Predict;
If Predict < 0 then SalePrice = 10000;
keep id SalePrice;
where id > 1460;

proc export data=result_Ans DBMS=csv outfile="/folders/myfolders/gkaggleTest.csv";
run;

** Proc Means to check missing values;
proc means data = result_Ans;
var SalePrice;
run;





***************************************************************************************************************************************************************************************************************************************************
**Question #2
***************************************************************************************************************************************************************************************************************************************************;
** Model Attempt #1 - Score of 0.21152;
proc glm data = train3 plots = all;
class Neighborhood(ref='NAmes');
model SalePrice = rGrLIvArea | Neighborhood | _1stFlrSF | LotArea | OverallQual | OverallCond | TotalBsmtSF /  solution clm;
output out = results1 p = Predict;
run;

** Model Attempt #2 - ;
proc glm data = train3 plots = all;
class  Neighborhood MSZoning   ;
model SalePrice = rGrLIvArea | Neighborhood | _1stFlrSF | LotArea | OverallQual | OverallCond | TotalBsmtSF /  cli solution clm;
output out = results2 p = Predict;
run;

** Model Attempt #3 - ;
proc reg data = train3 plots = all;
model SalePrice =  rGrLIvArea _1stFlrSF LotArea OverallQual OverallCond TotalBsmtSF /  vif ;
output out = results3 p = Predict;
run;


** Model Attempt #4 - All Model Data  ;
proc reg data = train3 plots = all;
model SalePrice = MSSubClass LotArea OverallQual OverallCond MasVnrArea 
	BsmtFinSF1 BsmtFinSF2 BsmtUnfSF TotalBsmtSF _1stFlrSF GrLivArea BsmtFullBath 
	BsmtHalfBath FullBath HalfBath BedroomAbvGr KitchenAbvGr TotRmsAbvGrd Fireplaces 
	GarageYrBlt GarageCars GarageArea WoodDeckSF OpenPorchSF EnclosedPorch _3SsnPorch 
	ScreenPorch PoolArea MiscVal MoSold / selection = stepwise;
output out = results4 p = Predict;
run;

** Model Attempt #5 - All Class and 18, P value < 0.15) Model Variables RMSE - 34523.03;
proc glm data = train3 plots = all;
class Neighborhood MSZoning HouseStyle RoofMatl Exterior1st Exterior2nd ExterQual BsmtQual BsmtCond BsmtExposure TotRmsAbvGrd BsmtFinType1 BsmtFinType2 Heating HeatingQC Electrical KitchenQual GarageType GarageFinish GarageQual GarageCond PavedDrive PoolQC SaleCondition;
model SalePrice = OverallQual GrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  cli soluition clm;
output out = results5 p = Predict;
run;

** Model Attempt #6 -  18 Dependent Variables with P value less than 0.15 from Neighborhood RMSE - 35112.18;
proc glm data = train3 plots = all;
class Neighborhood;
model SalePrice = OverallQual rGrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  solution clm;
output out = results6 p = Predict;
run;


** Model Attempt #6a -  18 Dependent Variables with P value less than 0.15 from Neighborhood RMSE - 35112.18;
proc glm data = train3 plots = all;
class Neighborhood HouseStyle ;
model SalePrice = OverallQual rGrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  solution clm;
output out = results6a p = Predict;
run;


** Model Attempt #6b -  18 Dependent Variables with P value less than 0.15 from Neighborhood RMSE - 35047.11;
proc glm data = train3 plots = all;
class Neighborhood HouseStyle MSSubClass;
model SalePrice = OverallQual rGrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  solution clm;
output out = results6b p = Predict;
run;

** Model Attempt #6c -  18 Dependent Variables with P value less than 0.15 from Neighborhood RMSE - 35047.11;
proc glm data = train3 plots = all;
class Neighborhood HouseStyle MSSubClass GarageType;
model SalePrice = OverallQual rGrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  solution clm;
output out = results6c p = Predict;
run;

** Model Attempt #6d -  18 Dependent Variables with P value less than 0.15 from Neighborhood RMSE - 35047.11;
proc glm data = train3 plots = all;
class Neighborhood HouseStyle MSSubClass GarageType Exterior1st;
model SalePrice = OverallQual rGrLivArea BsmtFinSF1 GarageCars MSSubClass BedroomAbvGr WoodDeckSF MasVnrArea LotArea GarageYrBlt OverallCond BsmtFullBath KitchenAbvGr TotRmsAbvGrd ScreenPorch FullBath TotalBsmtSF Fireplaces /  solution clm;
output out = results6d p = Predict;
run;

*********************************************************************************;
** Dummy Data;
data ;



*********************************************************************************;
data result_Ans;
set results6a;
if Predict > 0 then SalePrice = Predict;
If Predict < 0 then SalePrice = 10000;
keep id SalePrice;
where id > 1460;

proc export data=result_Ans DBMS=csv outfile="/folders/myfolders/gkaggle6a.csv";
run;

proc print data = result_Ans;
run;


** Proc Means to check missing values;
proc means data = result_Ans;
var SalePrice;
run;
