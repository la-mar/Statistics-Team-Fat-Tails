Analysis 2:

FILENAME REFFILE '/home/yaoy890/sasuser.v94/my_courses/Stats 1 files/train.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=train;
	GETNAMES=YES;
RUN;

FILENAME REFFILE '/home/yaoy890/sasuser.v94/my_courses/Stats 1 files/test.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=test;
	GETNAMES=YES;
RUN;

data test;
set test;
SalePrice = .;
;
*combine
data train2;
set train test;
run;
*transform
data train_test_log_fullQ; set train2;
log_SalePrice = log(SalePrice);
log_GrLivArea = log(GrLivArea); run;

*proc reg stuff
data reg_test1Q; set train_test_log_fullQ;
if Neighborhood = "BrkSide" then d1 = 1; else d1 = 0;
if Neighborhood = "Edwards" then d2 = 1; else d2 = 0;
if Neighborhood = "NAmes" then d3 = 1; else d3 = 0;
if Neighborhood = "BrDale" then d4 = 1; else d4 = 0;
if Neighborhood = "NridgHt" then d5 = 1; else d5 = 0;
if Neighborhood = "OldTown" then d6 = 1; else d6 = 0;
if Neighborhood = "Sawyer" then d7 = 1; else d7 = 0;
if Neighborhood = "SawyerW" then d8 = 1; else d8 = 0;
if Neighborhood = "Somerst" then d9 = 1; else d9 = 0;
if Neighborhood = "StoneBr" then d10 = 1; else d10 = 0;
if Neighborhood = "Gilbert" then d11 = 1; else d11 = 0;
if Neighborhood = "Mitchel" then d12 = 1; else d12 = 0;
if Neighborhood = "NWAmes" then d13 = 1; else d13 = 0;
int1 = d1*GrLivArea; int2 = d2*GrLivArea; int3 = d3*GrLivArea; int4 = d4*GrLivArea;
int5 = d5*GrLivArea; int6 = d6*GrLivArea; int7 = d7*GrLivArea; int8 = d8*GrLivArea;
int9 = d9*GrLivArea; int10 = d10*GrLivArea; int11 = d11*GrLivArea; int12 = d12*GrLivArea;
int13 = d13*GrLivArea; intA = d1*log_GrLivArea; intB = d2*log_GrLivArea; intC = d3*log_GrLivArea; intD = d4*log_GrLivArea;
intE = d5*log_GrLivArea; intF = d6*log_GrLivArea; intG = d7*log_GrLivArea; intH = d8*log_GrLivArea; intI = d9*log_GrLivArea;
intJ = d10*log_GrLivArea; intK = d11*log_GrLivArea; intL = d12*log_GrLivArea; intM = d13*log_GrLivArea; run;

data reg_test1Q_3; set reg_test1Q_2;
if _n_ = 524 then delete;
if _n_ = 826 then delete; run;

data reg_test1Q_4; set reg_test1Q_3;
if _n_ = 31 then delete;
if _n_ = 314 then delete;
if _n_ = 336 then delete; run;

data reg_test1Q_5; set reg_test1Q_4;
if _n_ = 249 then delete; run;

data reg_test1Q_6; set reg_test1Q_5;
if _n_ = 702 then delete; run;

data reg_test1Q_7; set reg_test1Q_6;
if _n_ = 1292 then delete; run;


*****EXPLORATORY CODE TRUNCATED…..WE HAVE 28 PAGES OF THIS;


proc glmselect data = reg_test1Q_6 plots = coefficientpanel;
class Neighborhood MSZoning Street Alley LotFrontage LotShape LandContour Utilities LotConfig LandSlope Condition1 Condition2 BldgType HouseStyle RoofStyle RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 Heating HeatingQC CentralAir Electrical KitchenQual Functional FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive PoolQC Fence MiscFeature SaleType SaleCondition / param = glm; 
*where Neighborhood in ("BrkSide", "Edwards", "NAmes", "BrDale", "NridgHt", "OldTown", "Sawyer", "SawyerW", "Somerst", "StoneBr", "Gilbert", "Mitchel", "NWAmes");
model log_SalePrice = log_GrLivArea Neighborhood BedroomAbvGr BldgType BsmtFinSF1 BsmtFullBath Condition2 FullBath Functional GarageCars Heating KitchenAbvGr KitchenQual LotArea OverallCond OverallQual SaleCondition ScreenPorch TotalBsmtSF WoodDeckSF YearBuilt YearRemodAdd / selection = forward(choose = CV include = 1) cvdetails = CVPRESS showpvalues;
output out = results p = Predict;
run;

proc glmselect data = reg_test1Q_6 plots = coefficientpanel;
class Neighborhood MSZoning Street Alley LotFrontage LotShape LandContour Utilities LotConfig LandSlope Condition1 Condition2 BldgType HouseStyle RoofStyle RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 Heating HeatingQC CentralAir Electrical KitchenQual Functional FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive PoolQC Fence MiscFeature SaleType SaleCondition / param = glm; 
*where Neighborhood in ("BrkSide", "Edwards", "NAmes", "BrDale", "NridgHt", "OldTown", "Sawyer", "SawyerW", "Somerst", "StoneBr", "Gilbert", "Mitchel", "NWAmes");
model log_SalePrice = log_GrLivArea Neighborhood BedroomAbvGr BsmtFinSF1 BsmtFinSF2 BsmtFullBath BsmtUnfSF Condition2 FullBath Functional GarageArea Heating KitchenAbvGr KitchenQual LotArea MSSubClass OverallCond OverallQual SaleCondition ScreenPorch WoodDeckSF YearBuilt / selection = backward(choose = CV include = 1) cvdetails = CVPRESS showpvalues;
output out = results p = Predict;
run;

proc glmselect data = reg_test1Q_6 plots = coefficientpanel;
class Neighborhood MSZoning Street Alley LotFrontage LotShape LandContour Utilities LotConfig LandSlope Condition1 Condition2 BldgType HouseStyle RoofStyle RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 Heating HeatingQC CentralAir Electrical KitchenQual Functional FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive PoolQC Fence MiscFeature SaleType SaleCondition / param = glm; 
*where Neighborhood in ("BrkSide", "Edwards", "NAmes", "BrDale", "NridgHt", "OldTown", "Sawyer", "SawyerW", "Somerst", "StoneBr", "Gilbert", "Mitchel", "NWAmes");
model log_SalePrice = log_GrLivArea Neighborhood BldgType BsmtFinSF1 BsmtFullBath Condition2 KitchenQual LotArea OverallCond OverallQual SaleCondition YearBuilt / selection = stepwise(choose = CV include = 1) cvdetails = CVPRESS showpvalues;
output out = results p = Predict;
run;



*****;

*custom

proc glmselect data = reg_test1Q_7 plots = coefficientpanel;
class Neighborhood MSZoning Street Alley LotFrontage LotShape LandContour Utilities LotConfig LandSlope Condition1 Condition2 BldgType HouseStyle RoofStyle RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 Heating HeatingQC CentralAir Electrical KitchenQual Functional FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive PoolQC Fence MiscFeature SaleType SaleCondition / param = glm; 
*where Neighborhood in ("BrkSide", "Edwards", "NAmes", "BrDale", "NridgHt", "OldTown", "Sawyer", "SawyerW", "Somerst", "StoneBr", "Gilbert", "Mitchel", "NWAmes");
model log_SalePrice = log_GrLivArea d1 d2 d3 d4 d6 d7 d8 d9 d11 d12 d13 dBT_1 dBT_5 BsmtFinSF1 BsmtFullBath dC2_5 dC2_3 dKQ_2 dKQ_3 LotArea OverallCond OverallQual dSC_1 dSC_2 dSC_3 dSC_6 YearBuilt / selection = stepwise(choose = CV include = 12) cvdetails = CVPRESS showpvalues;
output out = results p = Predict;
run;

*****;
*custom2 
proc reg data = reg_test1Q_7  plots(label)=(CooksD RStudentByLeverage) outest= logSP_stats_reg4 edf;
model log_SalePrice = log_GrLivArea d2 d6 d8 d11 d13 dBT_1 dBT_5 BsmtFinSF1 BsmtFullBath dC2_5 dKQ_3 LotArea OverallCond OverallQual dSC_1 dSC_2 dSC_3 YearBuilt / VIF adjrsq;
run; quit;
*custom 3
proc glm data = reg_test1Q_7 plots = all outstat = logSP_stats_glm4;
model log_SalePrice = log_GrLivArea d2 d6 d8 d11 d13 dBT_1 dBT_5 BsmtFinSF1 BsmtFullBath dC2_5 dKQ_3 LotArea OverallCond OverallQual dSC_1 dSC_2 dSC_3 YearBuilt/ solution;
output out = results p = Predict;
run;
