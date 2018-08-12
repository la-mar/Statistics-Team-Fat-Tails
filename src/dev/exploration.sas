







proc import datafile="/home/bfriedrich0/sasuser.v94/train.csv"
     out=train_original
     dbms=csv
     replace;
     getnames=yes;
run;

/* Filter columns and rows that are not involved in the QOI */
data train_reduced;                                                                                                                      
set train_original(keep= Id MSSubClass SalePrice GrLivArea Neighborhood); /* filter columns */
where Neighborhood = 'NAmes' or Neighborhood = 'Edwards' or Neighborhood = 'BrkSide'; /* filter rows */                                                                                                                  
run;

/* Clean and calculate data for analysis */
data train_cleansed;                                                                                                                      
set train_reduced;   
recSalePrice = 1/(SalePrice);                                                                                                                
logSalePrice = log(SalePrice);                                                                                                            
logGrLivArea = log(GrLivArea);
dual = 1;                                                                                                                    
run;






proc univariate data=train_original PLOTS NOPRINT;
/*    class Educ; */
/*    var SalePrice; */
/*    histogram / nrows = 5 kernel normal(noprint); */  
run;



/* proc glm data=data plots=all; */
/* class Species; */
/* model Force = Height | Species / solution clparm ; */
/* run; */




/* data train_reduced;         */
/*     set train_original(keep= Id MSSubClass SalePrice GrLivArea); */
/*     keep Id MSSubClass SalePrice GrLivArea; */
/* run; */

/* PROC PRINT DATA=data(obs=10); */
/* RUN;  */
/*  */
/* PROC FREQ DATA=data; */
/*  TABLES make ; */
/* RUN; */

proc univariate data=train_original noprint;
/*    class Educ; */
   var SalePrice;
   histogram / nrows = 5 kernel normal(noprint);
/*    qqplot / nrows = 5 normal(mu=est sigma=est color=red); */
/*    var GrLIvArea; */
/*    histogram / nrows = 5 kernel normal(noprint); */
/*    qqplot / nrows = 5 normal(mu=est sigma=est color=red);    */
run;

/* data data_trimmed; */
/* set data (where=(CommonName <> 'Asian_elephant')); */
/* run; */

/* proc glm data = edu_log; */
/* class Educ; */
/* model Log_Income2005 = Educ; */
/* run; */


/* data a; */
/* set a; */
/* dual=1; */
/* run; */


axis1 label=none value=none major=none;
   proc boxplot data=a;
     plot x*group;
     plot x*group / haxis=axis1;
   run;

PROC MEANS DATA=train_original;
/*   CLASS foreign; */
VAR SalePrice;
RUN;


proc sort data=train_original;
out=train_sorted;
by SalePrice;
run;


proc univariate data = train_original;
var SalePrice;
histogram / nrows = 5 kernel normal(noprint);
run;

proc reg data = train_original plots = all;
model SalePrice = GrLIvArea / clb;
/* GrLIvArea / diagonal=(histogram); */
run;
/*  */




/*  */
/* proc glm data=data plots=all; */
/* class Species; */
/* model Force = Height | Species / solution clparm ; */
/* run; */