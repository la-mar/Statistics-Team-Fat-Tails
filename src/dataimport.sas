/* Import training dataset from kaggle */
proc import datafile="/home/bfriedrich0/sasuser.v94/kaggle/data/train.csv"
     out=train_original
     dbms=csv
     replace;
     getnames=yes;
run;

/* Import testing dataset from kaggle */
proc import datafile="/home/bfriedrich0/sasuser.v94/kaggle/data/test.csv"
     out=test_original
     dbms=csv
     replace;
     getnames=yes;
run;

/* Combine test and train datasets and fix column names */
data combined_original;
   set train_original test_original;
   rename 
   '1stFlrSF'n = FirstFlrSF 
   '2ndFlrSF'n = SecondFlrSF
   '3SsnPorch'n = ThreeSsnPorch;
run;

/* train dataset unfiltered with added calculation columns */ 
data train_cleansed_calcs;                                                                                                                      
set train_original;                                                                                                          
logSalePrice = log(SalePrice); /* natural log of SalePrice */                                                                                                             
logGrLivArea = log(GrLivArea); /* natural log of GrLivArea */
total_area = GrLivArea + GarageArea + TotalBsmtSF;
remodel_age = 2018 - YearRemodAdd;                                                                                             
run;

/* train dataset with ALL variables and ALL neighborhoods */  
data train_cleansed_vall_nall;                                                                                                                     
set train_cleansed_calcs;                                                                                                                                                                                                    
run;

/* train dataset with ALL variables and TARGET neighborhoods */
data train_cleansed_vall_ntarget;                                                                                                                      
set train_cleansed_calcs;
where Neighborhood = 'NAmes'    /* North Ames */
   or Neighborhood = 'Edwards'  /* Edwards */
   or Neighborhood = 'BrkSide'; /* Brookside */                                                                                                                                                                                                                  
run;

/* train dataset with TARGET variables and ALL neighborhoods */
data train_cleansed_vtarget_nall;                                                                                                                       
set train_cleansed_calcs(keep= Id MSSubClass SalePrice 
								  GrLivArea logSalePrice 
						  		  logGrLivArea Neighborhood);                                                                                                                                                                                                      
run;

/* train dataset with TARGET variables and TARGET neighborhoods */
data train_cleansed_vtarget_ntarget;                                                                                                                       
set train_cleansed_calcs(keep= Id MSSubClass SalePrice 
								  GrLivArea logSalePrice 
						  		  logGrLivArea Neighborhood);
where Neighborhood = 'NAmes'    /* North Ames */
   or Neighborhood = 'Edwards'  /* Edwards */
   or Neighborhood = 'BrkSide'; /* Brookside */                                                                                                                                                                                                              
run;


/* Create derivatives of the combined dataset for use in various models */

/* Combined dataset unfiltered with added calculation columns */
data combined_cleansed_calcs;                                                                                                                       
set combined_original; /* train_reduced */                                                                                                             
logSalePrice = log(SalePrice); /* natural log of SalePrice */                                                                                                             
logGrLivArea = log(GrLivArea); /* natural log of GrLivArea */
total_area = GrLivArea + GarageArea + TotalBsmtSF;
remodel_age = 2018 - YearRemodAdd;                                                                                                
run;

/* Combined dataset with ALL variables and ALL neighborhoods */ 
data combined_cleansed_vall_nall;                                                                                                                      
set combined_cleansed_calcs;                                                                                                                                                                                                    
run;

/* Combined dataset with ALL variables and TARGET neighborhoods */
data combined_cleansed_vall_ntarget;                                                                                                                      
set combined_cleansed_calcs;
where Neighborhood = 'NAmes'    /* North Ames */
   or Neighborhood = 'Edwards'  /* Edwards */
   or Neighborhood = 'BrkSide'; /* Brookside */                                                                                                                                                                                                                  
run;

/* Combined dataset with TARGET variables and ALL neighborhoods */ 
data combined_cleansed_vtarget_nall;                                                                                                                      
set combined_cleansed_calcs(keep= Id MSSubClass SalePrice 
								  GrLivArea logSalePrice 
						  		  logGrLivArea Neighborhood);                                                                                                                                                                                                      
run;

/* Combined dataset with TARGET variables and TARGET neighborhoods */    
data combined_cleansed_vtarget_ntarget;                                                                                                                   
set combined_cleansed_calcs(keep= Id MSSubClass SalePrice 
								  GrLivArea logSalePrice 
						  		  logGrLivArea Neighborhood); 
where Neighborhood = 'NAmes'    /* North Ames */
   or Neighborhood = 'Edwards'  /* Edwards */
   or Neighborhood = 'BrkSide'; /* Brookside */                                                                                                                                                                                                            
run;











