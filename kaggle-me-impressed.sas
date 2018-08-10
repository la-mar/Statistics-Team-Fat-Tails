proc import datafile="C:\Repositories\Statistics-Team-Fat-Tails\data\train.csv"
     out=data
     dbms=csv
     replace;
     getnames=yes;
run;


PROC PRINT DATA=auto(obs=10);
RUN; 

/*PROC FREQ DATA=auto;*/
/*  TABLES make ;*/
/*RUN;*/
