proc sgscatter data = combined_cl_vall_nall;
matrix logprice OverallQual logliv BsmtFinSF1 OverallCond/ diagonal=(histogram);
run;
