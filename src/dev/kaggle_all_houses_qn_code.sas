** after importing a slightly modified CSV (SAS doesn't like column 
** names that start with numbers

data all_houses;
set work.import1;
run;

proc print data = all_houses;
run;

proc corr; run;

proc glm data = all_houses plots = ALL;
class MSZoning LotFrontage Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
Heating HeatingQC CentralAir Electrical KitchenQual Functional
FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
PoolQC Fence MiscFeature SaleType SaleCondition;
model SalePrice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
SecondFlrSF LowQualFinSF GrLivArea BsmtFullBath BsmtHalfBath FullBath HalfBath 
BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
/cli solution;
output out = results;
run;

** forward selection;
proc glmselect data = all_houses;
class MSZoning LotFrontage Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
Heating HeatingQC CentralAir Electrical KitchenQual Functional
FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
PoolQC Fence MiscFeature SaleType SaleCondition;
model SalePrice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
SecondFlrSF LowQualFinSF GrLivArea BsmtFullBath BsmtHalfBath FullBath HalfBath 
BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
/selection = Forward(stop=cv) cvmethod=random(5) stats=adjrsq;
run;

** backward selection;
proc glmselect data = all_houses;
class MSZoning LotFrontage Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
Heating HeatingQC CentralAir Electrical KitchenQual Functional
FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
PoolQC Fence MiscFeature SaleType SaleCondition;
model SalePrice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
SecondFlrSF LowQualFinSF GrLivArea BsmtFullBath BsmtHalfBath FullBath HalfBath 
BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
/selection = Backward(stop=cv) cvmethod=random(5) stats=adjrsq;
run;

** stepwise selection;
proc glmselect data = all_houses;
class MSZoning LotFrontage Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinType2 
Heating HeatingQC CentralAir Electrical KitchenQual Functional
FireplaceQu GarageType GarageFinish GarageQual GarageCond PavedDrive
PoolQC Fence MiscFeature SaleType SaleCondition;
model SalePrice = MSSubClass MSZoning LotFrontage LotArea Street Alley LotShape 
LandContour Utilities LotConfig LandSlope Neighborhood Condition1 Condition2 
BldgType HouseStyle OverallQual OverallCond YearBuilt YearRemodAdd RoofStyle 
RoofMatl Exterior1st Exterior2nd MasVnrType MasVnrArea ExterQual ExterCond 
Foundation BsmtQual BsmtCond BsmtExposure BsmtFinType1 BsmtFinSF1 BsmtFinType2 
BsmtFinSF2 BsmtUnfSF TotalBsmtSF Heating HeatingQC CentralAir Electrical FirstFlrSF 
SecondFlrSF LowQualFinSF GrLivArea BsmtFullBath BsmtHalfBath FullBath HalfBath 
BedroomAbvGr KitchenAbvGr KitchenQual TotRmsAbvGrd Functional Fireplaces 
FireplaceQu GarageType GarageYrBlt GarageFinish GarageCars GarageArea GarageQual 
GarageCond PavedDrive WoodDeckSF OpenPorchSF EnclosedPorch ThreeSsnPorch ScreenPorch 
PoolArea PoolQC Fence MiscFeature MiscVal MoSold YrSold SaleType SaleCondition
/selection = Stepwise cvmethod=random(5) stats=adjrsq;
run;

