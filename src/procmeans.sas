ods noproctitle;

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
TITLE;
run;
