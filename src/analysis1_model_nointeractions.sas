proc glm data = train_cleansed_vtarget_ntarget plots = all;
class Neighborhood(ref='NAmes');
model logSalePrice = logGrLIvArea Neighborhood / CLPARM solution;
output out = t student=res cookd = cookd h = lev p = yhat;
run;

proc reg data=train_cleansed_vtarget_ntarget
      plots(label)=(CooksD RStudentByLeverage DFFITS DFBETAS);   
   id id;
   model logSalePrice = logGrLIvArea;
run;
