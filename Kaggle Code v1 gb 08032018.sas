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

** Consolidate Train & Test Files Together and Review Data;
data train2;
set train test;
run;

** Round Great Living Room ;
data train3;                                                                                                                       
set train2;   
rGrLIvArea = round(GrLIvArea, 100);
logGrLIvArea = log(GrLIvArea);
logSalePrice = log(SalePrice);
run;

**proc print data = train3;
**var GrLIvArea rGrLIvArea;
**run;

** Select only Century 21 Homes - NAmes, Edwards, BrkSide;
data train4;                                                                                                                       
set train3;   
if Neighborhood in ("NAmes", "Edwards", "BrkSide");
run;

**Print Header to get Field Names;
**proc print date = train4 (obs=15);
**run;

********************************************************************
Begin Analysis of only Century 21 Data
Data Summary
	Train4 - Century 21 Only with Log
	Train3 - Rounded Data for GrLIvArea
	Train2 - Consolidated Data
********************************************************************;
proc sgscatter data = train4;
title "QQ Plot & & Historgram with House Data Log with Histogram";
matrix logSalePrice logGrLIvArea / diagonal=(histogram);
run;

proc sgscatter data = train4;
title "QQ Plot & & Historgram with House Data No Log with Histogram";
matrix SalePrice rGrLIvArea / diagonal=(histogram);
run;


proc sgplot data = train4;
title "Scatter Plot with House Data NoLog with Regression Lines";
reg x = GrLIvArea y=SalePrice / group=Neighborhood;
run;

proc sgplot data = train4;
title "Scatter Plot with House Data Log with Regression Lines";
reg x = logGrLIvArea y=logSalePrice / group=Neighborhood;
run;

proc reg data = train4;
title "Pro Reg House Data Log";
model logSalePrice = logGrLIvArea  / vif;
run;

proc reg data = train4;
title "Pro Reg House No Data Log";
model SalePrice = GrLIvArea   / vif;
run;

proc univariate data=train4; var logSaleprice; run;


*********************************************************************************
**Question #1
*********************************************************************************;

** Model Attempt #q1-Kroger - No Log  ;
proc glm data = train4 plots = all;
class Neighborhood(ref='NAmes');
model SalePrice = Neighborhood | GrLIvArea   /  solution clm;
output out = resultsq1kr p = Predict;
run;


** Model Attempt #q1-Kroger - Log  ;
proc glm data = train4 plots = all;
class Neighborhood(ref='NAmes');
model logSalePrice = Neighborhood | logGrLIvArea   /  solution clm;
output out = resultsq1kr p = Predict;
run;



proc print data = resultsq1-kr;
run;


** Proc Means to check missing values;
proc means data = resultsq1kr;
var SalePrice;
run;

***
** Outline for Question
** Describe the Problem
** 6 Outline