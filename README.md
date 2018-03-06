This repository contains replication materials for Gordon Danning, “Did Radio RTLM Really Contribute Meaningfully to the Rwandan Genocide?: Using Qualitative Information to Improve Causal Inference from Measures of Media Availability.” Please direct questions or suggestions to the author at gdanning@yahoo.com.

The replication materials comprise one data set, two R scripts, and one Stata do file.

The first R script, “rtlmfolds.R”, creates 100 iterations of 4 sets of training/test data sets, and saves them as Stata files.   

*** NOTE: Please remember to change your working directory to your Stata working directory before implementing the script.  ***

The Stata do file, “predictall.do”, performs predictions on each of the pairs of training/test sets for the original Yanigazawa-Drott model, and a model with the variable for RTLM reception dropped.

The second R script, “rtlmauc.R,” performs the non-binary AUC analysis..

The R work was done in R version 3.3.3 for the x86_64-apple-darwin13.4.0 (64-bit) platform for Mac.  The Stata work was done in Stata/IC 15.1 for Mac (64-bit Intel).

