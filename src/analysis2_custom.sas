proc glmselect data = combined_cl_vall_nall
seed=1 plots(stepAxis=number)=(criterionPanel ASEPlot CRITERIONPANEL); 
class MSZoning LotFrontage Street Alley  
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
Heating HeatingQC CentralAir Electrical KitchenQual Functional
FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
PoolQC Fence MiscFeature SaleType SaleCondition;
model logSalePrice = MSSubClass MSZoning LotFrontage LotArea Street Alley  
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
