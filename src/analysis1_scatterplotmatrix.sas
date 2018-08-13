ods listing close;                                                                                                                      
ods html file='HistMatrix.html' path='.';                                                                                               
ods graphics / reset width=1200px height=800px imagename='HistMatrix' imagefmt=png;                                                                                                                                                                                         
                                                                                       
proc sgscatter data = train_cleansed_vtarget_ntarget;                                                                                                    
   matrix SalePrice GrLivArea /                                                                                                    
          group=Neighborhood
          diagonal=(histogram kernel normal);
   title 'Sales Price and General Living Area for Target Neighborhoods';
run;
         
proc sgscatter data = train_cleansed_vtarget_ntarget;                                                                                                    
   matrix logSalePrice logGrLivArea /                                                                                                    
          group=Neighborhood 
          diagonal=(histogram kernel normal);
   title 'Log Transformation of Sales Price and General Living Area for Target Neighborhoods';
run;
                       
         
         
ods html close;                                                                                                                         
ods listing;  