******************************************************Step 1 - Transform Data
** Imported Data Set into SAS;
** Transform Data utilizng some Log Transformations;
data GData;                                                                                                                       
set GData;   
rGrLIvArea = round(GrLIvArea, 100);
log2GrlivArea = log(GrLIvArea / 100);
logliv = log(GrLIvArea);
logPrice = log(SalePrice);
run;

******************************************************Step 2 and 3: Build model and check residual plot to identify potential;
** Setting up 5 Models with varing degress of regression.  
** Model 1 - Utilize Stepwise with All Variables in the class and model to predict values;
proc glmselect data = GData
	seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
class MSZoning LotFrontage Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
	Heating HeatingQC CentralAir Electrical KitchenQual Functional
	FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
	PoolQC Fence MiscFeature SaleType SaleCondition;
model logprice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
	BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
	SecondFlrSF LowQualFinSF logliv BsmtFullBath BsmtHalfBath FullBath HalfBath 
	BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
	FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
	GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
	PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
	/selection = stepwise(stop=cv) cvmethod=split(10) stats=adjrsq cvdetails=cvpress;
output out = stepwise p = Predict;
run;


** Model 2 - Utilize Forward Selection with All Variables in the class and model to predict values;
proc glmselect data = GData
	seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
class MSZoning LotFrontage Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
	Heating HeatingQC CentralAir Electrical KitchenQual Functional
	FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
	PoolQC Fence MiscFeature SaleType SaleCondition;
model logprice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
	BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
	SecondFlrSF LowQualFinSF logliv BsmtFullBath BsmtHalfBath FullBath HalfBath 
	BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
	FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
	GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
	PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
	/selection = forward(stop=cv) cvmethod=split(10) stats=adjrsq cvdetails=cvpress;
output out = forward p = Predict;
run;


** Model 3 - Utilize Backward Elimination with All Variables in the class and model to predict values;
proc glmselect data = GData
	seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
class MSZoning LotFrontage Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
	Heating HeatingQC CentralAir Electrical KitchenQual Functional
	FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
	PoolQC Fence MiscFeature SaleType SaleCondition;
model logprice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
	BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
	SecondFlrSF LowQualFinSF logliv BsmtFullBath BsmtHalfBath FullBath HalfBath 
	BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
	FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
	GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
	PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
	/selection = backward(stop=cv) cvmethod=split(10) stats=adjrsq cvdetails=cvpress;
output out = backward p = Predict;
run;

** Model 4 - Utilize Lasso with All Variables in the class and model to predict values;
proc glmselect data = GData
	seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
class MSZoning LotFrontage Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
	Heating HeatingQC CentralAir Electrical KitchenQual Functional
	FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
	PoolQC Fence MiscFeature SaleType SaleCondition;
model logprice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
	BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
	SecondFlrSF LowQualFinSF logliv BsmtFullBath BsmtHalfBath FullBath HalfBath 
	BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
	FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
	GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
	PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
	/selection = lasso(stop=cv) cvmethod=split(10) stats=adjrsq cvdetails=cvpress;
output out = lasso p = Predict;
run;

** Model 5 - Utilize Custom Backwards Elimiation with All Variables in the Class and model 
with execption of "LotShape";
**This customer model scored the best beating backward elimation by 0.001;
proc glmselect data = GData
	seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
class MSZoning LotFrontage Street Alley  
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
	Heating HeatingQC CentralAir Electrical KitchenQual Functional
	FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
	PoolQC Fence MiscFeature SaleType SaleCondition;
model logprice = MSSubClass MSZoning LotFrontage LotArea Street Alley  
	LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
	BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
	RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
	Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
	BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
	SecondFlrSF LowQualFinSF logliv BsmtFullBath BsmtHalfBath FullBath HalfBath 
	BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
	FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
	GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
	PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
	/selection = backward(stop=cv) cvmethod=split(10) stats=adjrsq cvdetails=cvpress;
output out = backward5 p = Predict;
run;