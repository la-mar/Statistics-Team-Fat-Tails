/* Generate descriptive statistics of a dataset. */
ods proctitle;


PROC MEANS
DATA=train_cleansed_vtarget_ntarget
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
TITLE 'train_cleansed_vtarget_ntarget';
run;


PROC MEANS
DATA=train_cleansed_vtarget_ntarget
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
TITLE 'train_cleansed_vtarget_ntarget by Neighborhood';
run;


PROC MEANS
DATA=combined_cleansed_vall_ntarget
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
TITLE 'combined_cleansed_vall_ntarget';
run;


PROC MEANS
DATA=combined_cleansed_vall_ntarget
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
TITLE 'combined_cleansed_vall_ntarget by Neighborhood';
run;