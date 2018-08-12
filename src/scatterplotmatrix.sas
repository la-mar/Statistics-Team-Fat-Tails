
ods listing close;                                                                                                                      
ods html file='HistMatrix.html' path='.';                                                                                               
ods graphics / reset width=1200px height=800px imagename='HistMatrix' imagefmt=gif;                                                      
                                                                                                                                        
                                                                                       
proc sgscatter data = train_cleansed;                                                                                                      
   matrix SalePrice GrLivArea /                                                                                                    
          group=Neighborhood 
          diagonal=(histogram kernel normal);                                                                               
run;                                                                                                                                    
                                                                                                                                       
ods html close;                                                                                                                         
ods listing;  
