proc import datafile="C:\Repositories\Statistics-Team-Fat-Tails\data\train.csv"
     out=train_original
     dbms=csv
     replace;
     getnames=yes;
run;


/* Variables: */
/* --------------- */
/* Neighborhood: Physical locations within Ames city limits */
/* GrLivArea: Above grade (ground) living area square feet */


/* Neighborhoods: */
/* --------------- */
/* field_name : full_name */
/* NAmes =	North Ames */
/* Edwards =	Edwards */
/* BrkSide =	Brookside */

/* Filter columns and rows that are not involved in the QOI */
data train_reduced;                                                                                                                      
set train_original(keep= Id MSSubClass SalePrice GrLivArea Neighborhood MoSold YrSold SaleType SaleCondition); /* filter columns */
where Neighborhood = 'NAmes' or Neighborhood = 'Edwards' or Neighborhood = 'BrkSide'; /* filter rows */                                                                                                                  
run;

/* Clean and calculate data for analysis */
data train_cleansed;                                                                                                                      
set train_reduced; /* train_reduced */
recSalePrice = 1/(SalePrice);  /* reciprocal of SalePrice  */                                                                                                                 
logSalePrice = log(SalePrice); /* natural log of SalePrice */                                                                                                             
logGrLivArea = log(GrLivArea); /* vnatural log of GrLivArea */  
dual = 1;                      /* Arbitrary constant for plotting */                                                                                              
run;

PROC MEANS
DATA=train_reduced
 		MAXDEC = 0  /* Set number of decimal places in output  */
 		MISSING		/*   */
		N	 		/*   */
		NMISS 		/*   */
		MIN 		/*   */
		MAX 		/*   */
		MEAN 		/*   */
		MEDIAN 		/*   */
		QRANGE		/* IQR  */
		;
CLASS Neighborhood; /* YrSold; */
OUTPUT 
OUT=train_reduced_means 
NMISS= 
N= 
MEAN= 
SUM= 
MEDIAN= 
QRANGE=
/AUTONAME /* Prefix output columns with variable name */
; 
TITLE 'train_reduced summary statistics by Neighborhood';


