proc import datafile="/home/bfriedrich0/sasuser.v94/train.csv"
     out=train_original
     dbms=csv
     replace;
     getnames=yes;
run;

data train_cleansed;                                                                                                                       
set train_original(keep= Id MSSubClass SalePrice GrLivArea Neighborhood);
where Neighborhood = 'NAmes' or Neighborhood = 'Edwards' or Neighborhood = 'BrkSide';           
recSalePrice = 1/(SalePrice);                                                                                                                
logSalePrice = log(SalePrice); 
logrecSalePrice = log(1/SalePrice);                                                                                                            
logGrLivArea = log(GrLivArea);
dual = 1;                                                                                                                    
run;

proc means data = train_cleansed NMISS N MIN MAX MEAN MEDIAN QRANGE; 
by Neighborhood;
run;

/* proc freq data=train_cleansed; */
/*  tables SalePrice GrLivArea / out=FreqCount outexpect sparse; */
/*  by Neighborhood; */
run;

/*  */
/* proc reg data = train_cleansed plots = all; */
/* model SalePrice = GrLIvArea; */
/* SalePrice / diagonal=(histogram); */
/* run; */

ods listing close;                                                                                                                      
ods html file='HistMatrix.html' path='.';                                                                                               
ods graphics / reset width=1200px height=800px imagename='HistMatrix' imagefmt=gif;                                                      
                                                                                                                                        
                                                                                       
proc sgscatter data = train_cleansed;                                                                                                      
   where Neighborhood = 'NAmes' or Neighborhood = 'Edwards' or Neighborhood = 'BrkSide';
   matrix SalePrice logSalePrice GrLivArea logGrLivArea /                                                                                                    
          group=Neighborhood 
          diagonal=(histogram kernel);                                                                               
run;                                                                                                                                    
                                                                                                                                        
ods html close;                                                                                                                         
ods listing;  


ods listing close;                                                                                                                      
ods html file='HistMatrix.html' path='.';                                                                                               
ods graphics / reset width=1200px height=800px imagename='HistMatrix' imagefmt=gif;                                                      
                                                                                                                                        
                                                                                       
proc sgscatter data = train_cleansed;                                                                                                      
   where Neighborhood = 'NAmes' or Neighborhood = 'Edwards' or Neighborhood = 'BrkSide';
   matrix SalePrice logSalePrice recSalePrice logrecSalePrice /                                                                                                    
          group=Neighborhood 
/*           diagonal=(histogram kernel);                                                                                */
diagonal=(NORMAL); 
run;                                                                                                                                    
                                                                                                                                        
ods html close;                                                                                                                         
ods listing;  

/* NAmes =	North Ames */
/* Edwards =	Edwards */
/* BrkSide =	Brookside */


/*  */
/* proc reg data = train_original; */
/* model SalePrice = GrLIvArea / all; */
/* GrLIvArea / diagonal=(histogram); */
/* run; */
/*  */
/*  */
/* proc sort data=train_cleansed; */
/* out=train_cleansed; */
/* by Neighborhood; */
/* run; */
/*  */
/* proc means data = train_cleansed NMISS N MIN MAX MEAN MEDIAN QRANGE;  */
/* by Neighborhood; */
/* run; */
/*  */
/* Proc sort data = train_cleansed nodup; */
/* by Neighborhood; */
/* run; */


/* proc univariate data=train_cleansed PLOTS; */
/* by Neighborhood; */
/*    class Educ; */
/*    var SalePrice; */
/*    histogram / nrows = 5 kernel normal(noprint);   */
/* run; */
