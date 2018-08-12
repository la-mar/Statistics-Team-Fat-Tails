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





/*  */
/* proc means data=train_reduced NMISS N MIN MAX MEAN MEDIAN QRANGE;  */
/* title 'train_reduced summary'; */
/* run; */
/* proc means data=train_cleansed NMISS N MIN MAX MEAN MEDIAN QRANGE;  */
/* title 'train_cleansed summary'; */
/* run; */

/* ODS PATH RESET;                               */
/* ODS PATH (PREPEND) WORK.Templat(UPDATE) ;     */

/*  */
/* proc print data=pe label;  */
/*       id variable; */
/*       format estimate 8.2  */
/*              probt    pvalue12.10;  */
/*       var _numeric_; */
/*       title "Parameter Estimates"; */
/*       run; */


/*   proc template; */
/*      define column Minimum; */
/*         notes "Default p-value column"; */
/*         just = r; */
/*         format = Minimum 9.2; */
/*      end; */
/*      run; */

/* proc template; */
/*          delete Minimum; */
/*          run; */

/* ODS PATH RESET;                               */
/* ODS PATH (PREPEND) WORK.Templat(UPDATE) ;     */
/*                                               */
/* PROC TEMPLATE;                                */
/*   EDIT Base.Freq.OneWayList;                  */
/*     EDIT Frequency;                           */
/*       FORMAT = COMMA6.;                       */
/*     END;                                      */
/*     EDIT CumFrequency;                        */
/*       FORMAT = COMMA6.;                       */
/*     END;                                      */
/*     EDIT Percent;                             */
/*       FORMAT = 5.1;                           */
/*     END;                                      */
/*     EDIT CumPercent;                          */
/*       FORMAT = 5.1;                           */
/*     END;                                      */
/*   END;                                        */
/* RUN;                                          */
/*           */
/*  */
/* proc means data=train_original(keep= Id MSSubClass SalePrice GrLivArea Neighborhood) NMISS N MIN MAX MEAN MEDIAN QRANGE / FORMAT=COMMA6.;  */
/* title 'train_original summary'; */
/* run; */
/* proc means data=train_reduced NMISS N MIN MAX MEAN MEDIAN QRANGE;  */
/* title 'train_reduced summary'; */
/* run; */
/* proc means data=train_cleansed NMISS N MIN MAX MEAN MEDIAN QRANGE;  */
/* title 'train_cleansed summary'; */
/* run; */




















































