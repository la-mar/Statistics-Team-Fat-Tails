** URL for Kickoff **
https://www.youtube.com/watch?v=0QJtczDPxZQ
;
** Review Data;
proc print data = train;
run;

proc print data = test;
run;

** Add SalePrice to Dataset and Review;
data test;
set test;
SalePrice = .;
run;

proc print data = test;
run;

** Consolidate Train & Test Files Together and Review Data;
data train2;
set train test;
run;

proc print data = train2;
run;

** Transform Great Living Room to Log and put into LogTrain2;
** Doesn't appear to need transformation;
data logtrain2;                                                                                                                       
set train2;   
logGrLIvArea = log(GrLIvArea);
run;

** Round Great Living Room ;
data train3;                                                                                                                       
set train2;   
rGrLIvArea = round(GrLIvArea, 100);
run;

proc print data = train3;
var GrLIvArea rGrLIvArea;
run;

** Select only Century 21 Homes - NAmes, Edwards, BrkSide;
data train4;                                                                                                                       
set train3;   
if Neighborhood in ("NAmes", "Edwards", "BrkSide");
run;

proc print data = train4;
run;

**Print Header to get Field Names;
proc print date = train4 (obs=15);
run;

********************************************************************
Begin Analysis of only Century 21 Data
Data Summary
	Train4 - Century 21 Only 
	Train3 - Rounded Data for GrLIvArea
	Train2 - Consolidated Data
********************************************************************;
proc sgscatter data = train4;
matrix SalePrice rGrLIvArea / diagonal=(histogram);
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

** Model Attempt #1 - Score of 0.21152;
proc glm data = train4 plots = all;
class Neighborhood(ref='NAmes');
model SalePrice = rGrLIvArea | Neighborhood | _1stFlrSF | LotArea | OverallQual | OverallCond | TotalBsmtSF /  solution clm;
output out = results2 p = Predict;
run;

** Model Attempt #2 - ;
proc glm data = train4 plots = all;
class rGrLIvArea Neighborhood _1stFlrSF LotArea OverallQual OverallCond ;
model SalePrice = rGrLIvArea | Neighborhood | _1stFlrSF | LotArea | OverallQual | OverallCond | TotalBsmtSF /  solution clm;
output out = results2 p = Predict;
run;

data results4;
set results;
if Predict > 0 then SalePrice = Predict;
If Predict < 0 then SalePrice = 10000;
keep id SalePrice;
where id > 1460;

proc export data=results2 DBMS=csv outfile="/folders/myfolders/gkaggle2.csv";
run;

proc print data = results2;
run;


** Proc Means to check missing values;
proc means data = results2;
var SalePrice;
run;
