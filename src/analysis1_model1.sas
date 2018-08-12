proc glm data = train_cleansed plots = all;
class Neighborhood(ref='NAmes');
model logSalePrice = Neighborhood | logGrLIvArea;
output out = results p = Predict;
run;