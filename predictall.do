### Repliction for "Did Radio RTLM Really Contribute Meaningfully to the Rwandan Genocide?: 
### Using Qualitative Information to Improve Causal Inference from Measures of Media Availability"

# Gordon Danning
# gdanning@yahoo.com

# This do-file implements step 2 of the continutious ROC analysis.  Steps 1 and 3 are implented by the accompanying R files


clear all
set more off


* a1
* RwandaXd lpro12x

use "traina1"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa1"
predict yhat, xb
rename yhat drottmod12x
save "testa1", replace
clear

use "traina1"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa1"
predict yhat, xb
rename yhat nortlm12x
save "testa1", replace
clear

* RwandaXd lpro1x

use "traina1"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa1"
predict yhat, xb
rename yhat drottmod1x
save "testa1", replace
clear

use "traina1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa1"
predict yhat, xb
rename yhat nortlm1x
save "testa1", replace
clear

* RwandaXd lpro2x

use "traina1"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa1"
predict yhat, xb
rename yhat drottmod2x
save "testa1", replace
clear

use "traina1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa1"
predict yhat, xb
rename yhat nortlm2x
save "testa1", replace
clear

* b1
* RwandaXd lpro12x

use "trainb1"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb1"
predict yhat, xb
rename yhat drottmod12x
save "testb1", replace
clear

use "trainb1"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb1"
predict yhat, xb
rename yhat nortlm12x
save "testb1", replace
clear

* RwandaXd lpro1x

use "trainb1"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb1"
predict yhat, xb
rename yhat drottmod1x
save "testb1", replace
clear

use "trainb1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb1"
predict yhat, xb
rename yhat nortlm1x
save "testb1", replace
clear

* RwandaXd lpro2x

use "trainb1"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb1"
predict yhat, xb
rename yhat drottmod2x
save "testb1", replace
clear

use "trainb1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb1"
predict yhat, xb
rename yhat nortlm2x
save "testb1", replace
clear

* c1
* RwandaXd lpro12x

use "trainc1"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc1"
predict yhat, xb
rename yhat drottmod12x
save "testc1", replace
clear

use "trainc1"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc1"
predict yhat, xb
rename yhat nortlm12x
save "testc1", replace
clear

* RwandaXd lpro1x

use "trainc1"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc1"
predict yhat, xb
rename yhat drottmod1x
save "testc1", replace
clear

use "trainc1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc1"
predict yhat, xb
rename yhat nortlm1x
save "testc1", replace
clear

* RwandaXd lpro2x

use "trainc1"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc1"
predict yhat, xb
rename yhat drottmod2x
save "testc1", replace
clear

use "trainc1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc1"
predict yhat, xb
rename yhat nortlm2x
save "testc1", replace
clear


* d1
* RwandaXd lpro12x

use "traind1"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd1"
predict yhat, xb
rename yhat drottmod12x
save "testd1", replace
clear

use "traind1"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd1"
predict yhat, xb
rename yhat nortlm12x
save "testd1", replace
clear

* RwandaXd lpro1x

use "traind1"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd1"
predict yhat, xb
rename yhat drottmod1x
save "testd1", replace
clear

use "traind1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd1"
predict yhat, xb
rename yhat nortlm1x
save "testd1", replace
clear

* RwandaXd lpro2x

use "traind1"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd1"
predict yhat, xb
rename yhat drottmod2x
save "testd1", replace
clear

use "traind1"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd1"
predict yhat, xb
rename yhat nortlm2x
save "testd1", replace
clear

* a2
* RwandaXd lpro12x

use "traina2"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa2"
predict yhat, xb
rename yhat drottmod12x
save "testa2", replace
clear

use "traina2"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa2"
predict yhat, xb
rename yhat nortlm12x
save "testa2", replace
clear

* RwandaXd lpro1x

use "traina2"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa2"
predict yhat, xb
rename yhat drottmod1x
save "testa2", replace
clear

use "traina2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa2"
predict yhat, xb
rename yhat nortlm1x
save "testa2", replace
clear

* RwandaXd lpro2x

use "traina2"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa2"
predict yhat, xb
rename yhat drottmod2x
save "testa2", replace
clear

use "traina2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa2"
predict yhat, xb
rename yhat nortlm2x
save "testa2", replace
clear

* b2
* RwandaXd lpro12x

use "trainb2"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb2"
predict yhat, xb
rename yhat drottmod12x
save "testb2", replace
clear

use "trainb2"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb2"
predict yhat, xb
rename yhat nortlm12x
save "testb2", replace
clear

* RwandaXd lpro1x

use "trainb2"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb2"
predict yhat, xb
rename yhat drottmod1x
save "testb2", replace
clear

use "trainb2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb2"
predict yhat, xb
rename yhat nortlm1x
save "testb2", replace
clear

* RwandaXd lpro2x

use "trainb2"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb2"
predict yhat, xb
rename yhat drottmod2x
save "testb2", replace
clear

use "trainb2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb2"
predict yhat, xb
rename yhat nortlm2x
save "testb2", replace
clear

* c2
* RwandaXd lpro12x

use "trainc2"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc2"
predict yhat, xb
rename yhat drottmod12x
save "testc2", replace
clear

use "trainc2"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc2"
predict yhat, xb
rename yhat nortlm12x
save "testc2", replace
clear

* RwandaXd lpro1x

use "trainc2"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc2"
predict yhat, xb
rename yhat drottmod1x
save "testc2", replace
clear

use "trainc2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc2"
predict yhat, xb
rename yhat nortlm1x
save "testc2", replace
clear

* RwandaXd lpro2x

use "trainc2"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc2"
predict yhat, xb
rename yhat drottmod2x
save "testc2", replace
clear

use "trainc2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc2"
predict yhat, xb
rename yhat nortlm2x
save "testc2", replace
clear

* d2
* RwandaXd lpro12x

use "traind2"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd2"
predict yhat, xb
rename yhat drottmod12x
save "testd2", replace
clear

use "traind2"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd2"
predict yhat, xb
rename yhat nortlm12x
save "testd2", replace
clear

* RwandaXd lpro1x

use "traind2"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd2"
predict yhat, xb
rename yhat drottmod1x
save "testd2", replace
clear

use "traind2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd2"
predict yhat, xb
rename yhat nortlm1x
save "testd2", replace
clear

* RwandaXd lpro2x

use "traind2"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd2"
predict yhat, xb
rename yhat drottmod2x
save "testd2", replace
clear

use "traind2"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd2"
predict yhat, xb
rename yhat nortlm2x
save "testd2", replace
clear

* a3

* RwandaXd lpro12x

use "traina3"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa3"
predict yhat, xb
rename yhat drottmod12x
save "testa3", replace
clear

use "traina3"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa3"
predict yhat, xb
rename yhat nortlm12x
save "testa3", replace
clear

* RwandaXd lpro1x

use "traina3"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa3"
predict yhat, xb
rename yhat drottmod1x
save "testa3", replace
clear

use "traina3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa3"
predict yhat, xb
rename yhat nortlm1x
save "testa3", replace
clear

* RwandaXd lpro2x

use "traina3"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa3"
predict yhat, xb
rename yhat drottmod2x
save "testa3", replace
clear

use "traina3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa3"
predict yhat, xb
rename yhat nortlm2x
save "testa3", replace
clear

* b3
* RwandaXd lpro12x

use "trainb3"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb3"
predict yhat, xb
rename yhat drottmod12x
save "testb3", replace
clear

use "trainb3"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb3"
predict yhat, xb
rename yhat nortlm12x
save "testb3", replace
clear

* RwandaXd lpro1x

use "trainb3"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb3"
predict yhat, xb
rename yhat drottmod1x
save "testb3", replace
clear

use "trainb3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb3"
predict yhat, xb
rename yhat nortlm1x
save "testb3", replace
clear

* RwandaXd lpro2x

use "trainb3"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb3"
predict yhat, xb
rename yhat drottmod2x
save "testb3", replace
clear

use "trainb3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb3"
predict yhat, xb
rename yhat nortlm2x
save "testb3", replace
clear

* c3
* RwandaXd lpro12x

use "trainc3"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc3"
predict yhat, xb
rename yhat drottmod12x
save "testc3", replace
clear

use "trainc3"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc3"
predict yhat, xb
rename yhat nortlm12x
save "testc3", replace
clear

* RwandaXd lpro1x

use "trainc3"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc3"
predict yhat, xb
rename yhat drottmod1x
save "testc3", replace
clear

use "trainc3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc3"
predict yhat, xb
rename yhat nortlm1x
save "testc3", replace
clear

* RwandaXd lpro2x

use "trainc3"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc3"
predict yhat, xb
rename yhat drottmod2x
save "testc3", replace
clear

use "trainc3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc3"
predict yhat, xb
rename yhat nortlm2x
save "testc3", replace
clear

* d3
* RwandaXd lpro12x

use "traind3"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd3"
predict yhat, xb
rename yhat drottmod12x
save "testd3", replace
clear

use "traind3"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd3"
predict yhat, xb
rename yhat nortlm12x
save "testd3", replace
clear

* RwandaXd lpro1x

use "traind3"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd3"
predict yhat, xb
rename yhat drottmod1x
save "testd3", replace
clear

use "traind3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd3"
predict yhat, xb
rename yhat nortlm1x
save "testd3", replace
clear

* RwandaXd lpro2x

use "traind3"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd3"
predict yhat, xb
rename yhat drottmod2x
save "testd3", replace
clear

use "traind3"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd3"
predict yhat, xb
rename yhat nortlm2x
save "testd3", replace
clear


* a4
* RwandaXd lpro12x

use "traina4"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa4"
predict yhat, xb
rename yhat drottmod12x
save "testa4", replace
clear

use "traina4"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa4"
predict yhat, xb
rename yhat nortlm12x
save "testa4", replace
clear

* RwandaXd lpro1x

use "traina4"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa4"
predict yhat, xb
rename yhat drottmod1x
save "testa4", replace
clear

use "traina4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa4"
predict yhat, xb
rename yhat nortlm1x
save "testa4", replace
clear

* RwandaXd lpro2x

use "traina4"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa4"
predict yhat, xb
rename yhat drottmod2x
save "testa4", replace
clear

use "traina4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa4"
predict yhat, xb
rename yhat nortlm2x
save "testa4", replace
clear

* b4
* RwandaXd lpro12x

use "trainb4"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb4"
predict yhat, xb
rename yhat drottmod12x
save "testb4", replace
clear

use "trainb4"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb4"
predict yhat, xb
rename yhat nortlm12x
save "testb4", replace
clear

* RwandaXd lpro1x

use "trainb4"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb4"
predict yhat, xb
rename yhat drottmod1x
save "testb4", replace
clear

use "trainb4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb4"
predict yhat, xb
rename yhat nortlm1x
save "testb4", replace
clear

* RwandaXd lpro2x

use "trainb4"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb4"
predict yhat, xb
rename yhat drottmod2x
save "testb4", replace
clear

use "trainb4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb4"
predict yhat, xb
rename yhat nortlm2x
save "testb4", replace
clear

* c4
* RwandaXd lpro12x

use "trainc4"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc4"
predict yhat, xb
rename yhat drottmod12x
save "testc4", replace
clear

use "trainc4"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc4"
predict yhat, xb
rename yhat nortlm12x
save "testc4", replace
clear

* RwandaXd lpro1x

use "trainc4"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc4"
predict yhat, xb
rename yhat drottmod1x
save "testc4", replace
clear

use "trainc4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc4"
predict yhat, xb
rename yhat nortlm1x
save "testc4", replace
clear

* RwandaXd lpro2x

use "trainc4"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc4"
predict yhat, xb
rename yhat drottmod2x
save "testc4", replace
clear

use "trainc4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc4"
predict yhat, xb
rename yhat nortlm2x
save "testc4", replace
clear


* d4
* RwandaXd lpro12x

use "traind4"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd4"
predict yhat, xb
rename yhat drottmod12x
save "testd4", replace
clear

use "traind4"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd4"
predict yhat, xb
rename yhat nortlm12x
save "testd4", replace
clear

* RwandaXd lpro1x

use "traind4"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd4"
predict yhat, xb
rename yhat drottmod1x
save "testd4", replace
clear

use "traind4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd4"
predict yhat, xb
rename yhat nortlm1x
save "testd4", replace
clear

* RwandaXd lpro2x

use "traind4"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd4"
predict yhat, xb
rename yhat drottmod2x
save "testd4", replace
clear

use "traind4"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd4"
predict yhat, xb
rename yhat nortlm2x
save "testd4", replace
clear

* a5
* RwandaXd lpro12x

use "traina5"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa5"
predict yhat, xb
rename yhat drottmod12x
save "testa5", replace
clear

use "traina5"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa5"
predict yhat, xb
rename yhat nortlm12x
save "testa5", replace
clear

* RwandaXd lpro1x

use "traina5"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa5"
predict yhat, xb
rename yhat drottmod1x
save "testa5", replace
clear

use "traina5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa5"
predict yhat, xb
rename yhat nortlm1x
save "testa5", replace
clear

* RwandaXd lpro2x

use "traina5"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa5"
predict yhat, xb
rename yhat drottmod2x
save "testa5", replace
clear

use "traina5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa5"
predict yhat, xb
rename yhat nortlm2x
save "testa5", replace
clear

* b5
* RwandaXd lpro12x

use "trainb5"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb5"
predict yhat, xb
rename yhat drottmod12x
save "testb5", replace
clear

use "trainb5"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb5"
predict yhat, xb
rename yhat nortlm12x
save "testb5", replace
clear

* RwandaXd lpro1x

use "trainb5"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb5"
predict yhat, xb
rename yhat drottmod1x
save "testb5", replace
clear

use "trainb5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb5"
predict yhat, xb
rename yhat nortlm1x
save "testb5", replace
clear

* RwandaXd lpro2x

use "trainb5"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb5"
predict yhat, xb
rename yhat drottmod2x
save "testb5", replace

clear
use "trainb5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb5"
predict yhat, xb
rename yhat nortlm2x
save "testb5", replace
clear

* c5
* RwandaXd lpro12x

use "trainc5"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc5"
predict yhat, xb
rename yhat drottmod12x
save "testc5", replace
clear

use "trainc5"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc5"
predict yhat, xb
rename yhat nortlm12x
save "testc5", replace
clear

* RwandaXd lpro1x

use "trainc5"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc5"
predict yhat, xb
rename yhat drottmod1x
save "testc5", replace
clear

use "trainc5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc5"
predict yhat, xb
rename yhat nortlm1x
save "testc5", replace
clear

* RwandaXd lpro2x

use "trainc5"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc5"
predict yhat, xb
rename yhat drottmod2x
save "testc5", replace
clear

use "trainc5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc5"
predict yhat, xb
rename yhat nortlm2x
save "testc5", replace
clear

* d5
* RwandaXd lpro12x

use "traind5"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd5"
predict yhat, xb
rename yhat drottmod12x
save "testd5", replace
clear

use "traind5"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd5"
predict yhat, xb
rename yhat nortlm12x
save "testd5", replace
clear

* RwandaXd lpro1x

use "traind5"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd5"
predict yhat, xb
rename yhat drottmod1x
save "testd5", replace
clear

use "traind5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd5"
predict yhat, xb
rename yhat nortlm1x
save "testd5", replace
clear

* RwandaXd lpro2x

use "traind5"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd5"
predict yhat, xb
rename yhat drottmod2x
save "testd5", replace
clear

use "traind5"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd5"
predict yhat, xb
rename yhat nortlm2x
save "testd5", replace
clear

* a6
* RwandaXd lpro12x

use "traina6"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa6"
predict yhat, xb
rename yhat drottmod12x
save "testa6", replace
clear

use "traina6"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa6"
predict yhat, xb
rename yhat nortlm12x
save "testa6", replace
clear

* RwandaXd lpro1x

use "traina6"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa6"
predict yhat, xb
rename yhat drottmod1x
save "testa6", replace
clear

use "traina6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa6"
predict yhat, xb
rename yhat nortlm1x
save "testa6", replace
clear

* RwandaXd lpro2x

use "traina6"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa6"
predict yhat, xb
rename yhat drottmod2x
save "testa6", replace
clear

use "traina6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa6"
predict yhat, xb
rename yhat nortlm2x
save "testa6", replace
clear

* b6
* RwandaXd lpro12x

use "trainb6"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb6"
predict yhat, xb
rename yhat drottmod12x
save "testb6", replace
clear

use "trainb6"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb6"
predict yhat, xb
rename yhat nortlm12x
save "testb6", replace
clear

* RwandaXd lpro1x

use "trainb6"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb6"
predict yhat, xb
rename yhat drottmod1x
save "testb6", replace
clear

use "trainb6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb6"
predict yhat, xb
rename yhat nortlm1x
save "testb6", replace
clear

* RwandaXd lpro2x

use "trainb6"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb6"
predict yhat, xb
rename yhat drottmod2x
save "testb6", replace
clear

use "trainb6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb6"
predict yhat, xb
rename yhat nortlm2x
save "testb6", replace
clear

* c6
* RwandaXd lpro12x

use "trainc6"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc6"
predict yhat, xb
rename yhat drottmod12x
save "testc6", replace
clear

use "trainc6"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc6"
predict yhat, xb
rename yhat nortlm12x
save "testc6", replace
clear

* RwandaXd lpro1x

use "trainc6"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc6"
predict yhat, xb
rename yhat drottmod1x
save "testc6", replace
clear

use "trainc6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc6"
predict yhat, xb
rename yhat nortlm1x
save "testc6", replace
clear

* RwandaXd lpro2x

use "trainc6"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc6"
predict yhat, xb
rename yhat drottmod2x
save "testc6", replace
clear

use "trainc6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc6"
predict yhat, xb
rename yhat nortlm2x
save "testc6", replace
clear

* d6
* RwandaXd lpro12x

use "traind6"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd6"
predict yhat, xb
rename yhat drottmod12x
save "testd6", replace
clear

use "traind6"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd6"
predict yhat, xb
rename yhat nortlm12x
save "testd6", replace
clear

* RwandaXd lpro1x

use "traind6"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd6"
predict yhat, xb
rename yhat drottmod1x
save "testd6", replace
clear

use "traind6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd6"
predict yhat, xb
rename yhat nortlm1x
save "testd6", replace
clear

* RwandaXd lpro2x

use "traind6"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd6"
predict yhat, xb
rename yhat drottmod2x
save "testd6", replace
clear

use "traind6"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd6"
predict yhat, xb
rename yhat nortlm2x
save "testd6", replace
clear

* a7
* RwandaXd lpro12x

use "traina7"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa7"
predict yhat, xb
rename yhat drottmod12x
save "testa7", replace
clear

use "traina7"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa7"
predict yhat, xb
rename yhat nortlm12x
save "testa7", replace
clear

* RwandaXd lpro1x

use "traina7"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa7"
predict yhat, xb
rename yhat drottmod1x
save "testa7", replace
clear

use "traina7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa7"
predict yhat, xb
rename yhat nortlm1x
save "testa7", replace
clear

* RwandaXd lpro2x

use "traina7"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa7"
predict yhat, xb
rename yhat drottmod2x
save "testa7", replace
clear

use "traina7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa7"
predict yhat, xb
rename yhat nortlm2x
save "testa7", replace
clear

* b7
* RwandaXd lpro12x

use "trainb7"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb7"
predict yhat, xb
rename yhat drottmod12x
save "testb7", replace
clear

use "trainb7"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb7"
predict yhat, xb
rename yhat nortlm12x
save "testb7", replace
clear

* RwandaXd lpro1x

use "trainb7"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb7"
predict yhat, xb
rename yhat drottmod1x
save "testb7", replace
clear

use "trainb7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb7"
predict yhat, xb
rename yhat nortlm1x
save "testb7", replace
clear

* RwandaXd lpro2x

use "trainb7"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb7"
predict yhat, xb
rename yhat drottmod2x
save "testb7", replace
clear

use "trainb7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb7"
predict yhat, xb
rename yhat nortlm2x
save "testb7", replace
clear

* c7
* RwandaXd lpro12x

use "trainc7"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc7"
predict yhat, xb
rename yhat drottmod12x
save "testc7", replace
clear

use "trainc7"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc7"
predict yhat, xb
rename yhat nortlm12x
save "testc7", replace
clear

* RwandaXd lpro1x

use "trainc7"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc7"
predict yhat, xb
rename yhat drottmod1x
save "testc7", replace
clear

use "trainc7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc7"
predict yhat, xb
rename yhat nortlm1x
save "testc7", replace
clear

* RwandaXd lpro2x

use "trainc7"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc7"
predict yhat, xb
rename yhat drottmod2x
save "testc7", replace
clear

use "trainc7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc7"
predict yhat, xb
rename yhat nortlm2x
save "testc7", replace
clear


* d7
* RwandaXd lpro12x

use "traind7"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd7"
predict yhat, xb
rename yhat drottmod12x
save "testd7", replace
clear

use "traind7"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd7"
predict yhat, xb
rename yhat nortlm12x
save "testd7", replace
clear

* RwandaXd lpro1x

use "traind7"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd7"
predict yhat, xb
rename yhat drottmod1x
save "testd7", replace
clear

use "traind7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd7"
predict yhat, xb
rename yhat nortlm1x
save "testd7", replace
clear

* RwandaXd lpro2x

use "traind7"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd7"
predict yhat, xb
rename yhat drottmod2x
save "testd7", replace
clear

use "traind7"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd7"
predict yhat, xb
rename yhat nortlm2x
save "testd7", replace
clear

* a8
* RwandaXd lpro12x

use "traina8"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa8"
predict yhat, xb
rename yhat drottmod12x
save "testa8", replace
clear

use "traina8"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa8"
predict yhat, xb
rename yhat nortlm12x
save "testa8", replace
clear

* RwandaXd lpro1x

use "traina8"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa8"
predict yhat, xb
rename yhat drottmod1x
save "testa8", replace
clear

use "traina8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa8"
predict yhat, xb
rename yhat nortlm1x
save "testa8", replace
clear

* RwandaXd lpro2x

use "traina8"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa8"
predict yhat, xb
rename yhat drottmod2x
save "testa8", replace
clear

use "traina8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa8"
predict yhat, xb
rename yhat nortlm2x
save "testa8", replace
clear

* b8
* RwandaXd lpro12x

use "trainb8"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb8"
predict yhat, xb
rename yhat drottmod12x
save "testb8", replace
clear

use "trainb8"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb8"
predict yhat, xb
rename yhat nortlm12x
save "testb8", replace
clear

* RwandaXd lpro1x

use "trainb8"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb8"
predict yhat, xb
rename yhat drottmod1x
save "testb8", replace
clear

use "trainb8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb8"
predict yhat, xb
rename yhat nortlm1x
save "testb8", replace
clear

* RwandaXd lpro2x

use "trainb8"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb8"
predict yhat, xb
rename yhat drottmod2x
save "testb8", replace
clear

use "trainb8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb8"
predict yhat, xb
rename yhat nortlm2x
save "testb8", replace
clear

* c8
* RwandaXd lpro12x

use "trainc8"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc8"
predict yhat, xb
rename yhat drottmod12x
save "testc8", replace
clear

use "trainc8"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc8"
predict yhat, xb
rename yhat nortlm12x
save "testc8", replace
clear

* RwandaXd lpro1x

use "trainc8"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc8"
predict yhat, xb
rename yhat drottmod1x
save "testc8", replace
clear

use "trainc8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc8"
predict yhat, xb
rename yhat nortlm1x
save "testc8", replace
clear

* RwandaXd lpro2x

use "trainc8"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc8"
predict yhat, xb
rename yhat drottmod2x
save "testc8", replace
clear

use "trainc8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc8"
predict yhat, xb
rename yhat nortlm2x
save "testc8", replace
clear

* d8
* RwandaXd lpro12x

use "traind8"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd8"
predict yhat, xb
rename yhat drottmod12x
save "testd8", replace
clear

use "traind8"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd8"
predict yhat, xb
rename yhat nortlm12x
save "testd8", replace
clear

* RwandaXd lpro1x

use "traind8"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd8"
predict yhat, xb
rename yhat drottmod1x
save "testd8", replace
clear

use "traind8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd8"
predict yhat, xb
rename yhat nortlm1x
save "testd8", replace
clear

* RwandaXd lpro2x

use "traind8"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd8"
predict yhat, xb
rename yhat drottmod2x
save "testd8", replace
clear

use "traind8"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd8"
predict yhat, xb
rename yhat nortlm2x
save "testd8", replace
clear

* a9
* RwandaXd lpro12x

use "traina9"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa9"
predict yhat, xb
rename yhat drottmod12x
save "testa9", replace
clear

use "traina9"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa9"
predict yhat, xb
rename yhat nortlm12x
save "testa9", replace
clear

* RwandaXd lpro1x

use "traina9"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa9"
predict yhat, xb
rename yhat drottmod1x
save "testa9", replace
clear

use "traina9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa9"
predict yhat, xb
rename yhat nortlm1x
save "testa9", replace
clear

* RwandaXd lpro2x

use "traina9"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa9"
predict yhat, xb
rename yhat drottmod2x
save "testa9", replace
clear

use "traina9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa9"
predict yhat, xb
rename yhat nortlm2x
save "testa9", replace
clear

* b9
* RwandaXd lpro12x

use "trainb9"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb9"
predict yhat, xb
rename yhat drottmod12x
save "testb9", replace
clear

use "trainb9"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb9"
predict yhat, xb
rename yhat nortlm12x
save "testb9", replace
clear

* RwandaXd lpro1x

use "trainb9"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb9"
predict yhat, xb
rename yhat drottmod1x
save "testb9", replace
clear

use "trainb9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb9"
predict yhat, xb
rename yhat nortlm1x
save "testb9", replace
clear

* RwandaXd lpro2x

use "trainb9"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb9"
predict yhat, xb
rename yhat drottmod2x
save "testb9", replace
clear

use "trainb9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb9"
predict yhat, xb
rename yhat nortlm2x
save "testb9", replace
clear

* c9
* RwandaXd lpro12x

use "trainc9"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc9"
predict yhat, xb
rename yhat drottmod12x
save "testc9", replace
clear

use "trainc9"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc9"
predict yhat, xb
rename yhat nortlm12x
save "testc9", replace
clear

* RwandaXd lpro1x

use "trainc9"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc9"
predict yhat, xb
rename yhat drottmod1x
save "testc9", replace
clear

use "trainc9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc9"
predict yhat, xb
rename yhat nortlm1x
save "testc9", replace
clear

* RwandaXd lpro2x

use "trainc9"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc9"
predict yhat, xb
rename yhat drottmod2x
save "testc9", replace
clear

use "trainc9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc9"
predict yhat, xb
rename yhat nortlm2x
save "testc9", replace
clear

* d9
* RwandaXd lpro12x

use "traind9"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd9"
predict yhat, xb
rename yhat drottmod12x
save "testd9", replace
clear

use "traind9"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd9"
predict yhat, xb
rename yhat nortlm12x
save "testd9", replace
clear

* RwandaXd lpro1x

use "traind9"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd9"
predict yhat, xb
rename yhat drottmod1x
save "testd9", replace
clear

use "traind9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd9"
predict yhat, xb
rename yhat nortlm1x
save "testd9", replace
clear

* RwandaXd lpro2x

use "traind9"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd9"
predict yhat, xb
rename yhat drottmod2x
save "testd9", replace
clear

use "traind9"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd9"
predict yhat, xb
rename yhat nortlm2x
save "testd9", replace
clear


* a10
* RwandaXd lpro12x

use "traina10"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa10"
predict yhat, xb
rename yhat drottmod12x
save "testa10", replace
clear

use "traina10"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa10"
predict yhat, xb
rename yhat nortlm12x
save "testa10", replace
clear

* RwandaXd lpro1x

use "traina10"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa10"
predict yhat, xb
rename yhat drottmod1x
save "testa10", replace
clear

use "traina10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa10"
predict yhat, xb
rename yhat nortlm1x
save "testa10", replace
clear

* RwandaXd lpro2x

use "traina10"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa10"
predict yhat, xb
rename yhat drottmod2x
save "testa10", replace
clear

use "traina10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa10"
predict yhat, xb
rename yhat nortlm2x
save "testa10", replace
clear

* b10
* RwandaXd lpro12x

use "trainb10"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb10"
predict yhat, xb
rename yhat drottmod12x
save "testb10", replace
clear

use "trainb10"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb10"
predict yhat, xb
rename yhat nortlm12x
save "testb10", replace
clear

* RwandaXd lpro1x

use "trainb10"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb10"
predict yhat, xb
rename yhat drottmod1x
save "testb10", replace
clear

use "trainb10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb10"
predict yhat, xb
rename yhat nortlm1x
save "testb10", replace
clear

* RwandaXd lpro2x

use "trainb10"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb10"
predict yhat, xb
rename yhat drottmod2x
save "testb10", replace
clear

use "trainb10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb10"
predict yhat, xb
rename yhat nortlm2x
save "testb10", replace
clear

* c10
* RwandaXd lpro12x

use "trainc10"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc10"
predict yhat, xb
rename yhat drottmod12x
save "testc10", replace
clear

use "trainc10"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc10"
predict yhat, xb
rename yhat nortlm12x
save "testc10", replace
clear

* RwandaXd lpro1x
use "trainc10"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc10"
predict yhat, xb
rename yhat drottmod1x
save "testc10", replace
clear

use "trainc10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc10"
predict yhat, xb
rename yhat nortlm1x
save "testc10", replace
clear

* RwandaXd lpro2x

use "trainc10"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc10"
predict yhat, xb
rename yhat drottmod2x
save "testc10", replace
clear

use "trainc10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc10"
predict yhat, xb
rename yhat nortlm2x
save "testc10", replace
clear


* d10
* RwandaXd lpro12x

use "traind10"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd10"
predict yhat, xb
rename yhat drottmod12x
save "testd10", replace
clear

use "traind10"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd10"
predict yhat, xb
rename yhat nortlm12x
save "testd10", replace
clear

* RwandaXd lpro1x

use "traind10"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd10"
predict yhat, xb
rename yhat drottmod1x
save "testd10", replace
clear

use "traind10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd10"
predict yhat, xb
rename yhat nortlm1x
save "testd10", replace
clear

* RwandaXd lpro2x

use "traind10"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd10"
predict yhat, xb
rename yhat drottmod2x
save "testd10", replace
clear

use "traind10"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd10"
predict yhat, xb
rename yhat nortlm2x
save "testd10", replace
clear



* a11
* RwandaXd lpro12x

use "traina11"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa11"
predict yhat, xb
rename yhat drottmod12x
save "testa11", replace
clear

use "traina11"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa11"
predict yhat, xb
rename yhat nortlm12x
save "testa11", replace
clear

* RwandaXd lpro1x

use "traina11"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa11"
predict yhat, xb
rename yhat drottmod1x
save "testa11", replace
clear

use "traina11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa11"
predict yhat, xb
rename yhat nortlm1x
save "testa11", replace
clear

* RwandaXd lpro2x

use "traina11"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa11"
predict yhat, xb
rename yhat drottmod2x
save "testa11", replace
clear

use "traina11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa11"
predict yhat, xb
rename yhat nortlm2x
save "testa11", replace
clear

* b11
* RwandaXd lpro12x

use "trainb11"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb11"
predict yhat, xb
rename yhat drottmod12x
save "testb11", replace
clear

use "trainb11"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb11"
predict yhat, xb
rename yhat nortlm12x
save "testb11", replace
clear

* RwandaXd lpro1x

use "trainb11"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb11"
predict yhat, xb
rename yhat drottmod1x
save "testb11", replace
clear

use "trainb11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb11"
predict yhat, xb
rename yhat nortlm1x
save "testb11", replace
clear

* RwandaXd lpro2x

use "trainb11"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb11"
predict yhat, xb
rename yhat drottmod2x
save "testb11", replace
clear

use "trainb11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb11"
predict yhat, xb
rename yhat nortlm2x
save "testb11", replace
clear

* c11
* RwandaXd lpro12x

use "trainc11"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc11"
predict yhat, xb
rename yhat drottmod12x
save "testc11", replace
clear

use "trainc11"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc11"
predict yhat, xb
rename yhat nortlm12x
save "testc11", replace
clear

* RwandaXd lpro1x

use "trainc11"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc11"
predict yhat, xb
rename yhat drottmod1x
save "testc11", replace
clear

use "trainc11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc11"
predict yhat, xb
rename yhat nortlm1x
save "testc11", replace
clear

* RwandaXd lpro2x

use "trainc11"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc11"
predict yhat, xb
rename yhat drottmod2x
save "testc11", replace
clear

use "trainc11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc11"
predict yhat, xb
rename yhat nortlm2x
save "testc11", replace
clear


* d11
* RwandaXd lpro12x

use "traind11"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd11"
predict yhat, xb
rename yhat drottmod12x
save "testd11", replace
clear

use "traind11"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd11"
predict yhat, xb
rename yhat nortlm12x
save "testd11", replace
clear

* RwandaXd lpro1x

use "traind11"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd11"
predict yhat, xb
rename yhat drottmod1x
save "testd11", replace
clear

use "traind11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd11"
predict yhat, xb
rename yhat nortlm1x
save "testd11", replace
clear

* RwandaXd lpro2x

use "traind11"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd11"
predict yhat, xb
rename yhat drottmod2x
save "testd11", replace
clear

use "traind11"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd11"
predict yhat, xb
rename yhat nortlm2x
save "testd11", replace
clear

* a2
* RwandaXd lpro12x

use "traina12"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa12"
predict yhat, xb
rename yhat drottmod12x
save "testa12", replace
clear

use "traina12"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa12"
predict yhat, xb
rename yhat nortlm12x
save "testa12", replace
clear

* RwandaXd lpro1x

use "traina12"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa12"
predict yhat, xb
rename yhat drottmod1x
save "testa12", replace
clear

use "traina12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa12"
predict yhat, xb
rename yhat nortlm1x
save "testa12", replace
clear

* RwandaXd lpro2x

use "traina12"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa12"
predict yhat, xb
rename yhat drottmod2x
save "testa12", replace
clear

use "traina12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa12"
predict yhat, xb
rename yhat nortlm2x
save "testa12", replace
clear

* b12
* RwandaXd lpro12x

use "trainb12"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb12"
predict yhat, xb
rename yhat drottmod12x
save "testb12", replace
clear

use "trainb12"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb12"
predict yhat, xb
rename yhat nortlm12x
save "testb12", replace
clear

* RwandaXd lpro1x

use "trainb12"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb12"
predict yhat, xb
rename yhat drottmod1x
save "testb12", replace
clear

use "trainb12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb12"
predict yhat, xb
rename yhat nortlm1x
save "testb12", replace
clear

* RwandaXd lpro2x

use "trainb12"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb12"
predict yhat, xb
rename yhat drottmod2x
save "testb12", replace
clear

use "trainb12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb12"
predict yhat, xb
rename yhat nortlm2x
save "testb12", replace
clear

* c12
* RwandaXd lpro12x

use "trainc12"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc12"
predict yhat, xb
rename yhat drottmod12x
save "testc12", replace
clear

use "trainc12"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc12"
predict yhat, xb
rename yhat nortlm12x
save "testc12", replace
clear

* RwandaXd lpro1x

use "trainc12"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc12"
predict yhat, xb
rename yhat drottmod1x
save "testc12", replace
clear

use "trainc12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc12"
predict yhat, xb
rename yhat nortlm1x
save "testc12", replace
clear

* RwandaXd lpro2x

use "trainc12"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc12"
predict yhat, xb
rename yhat drottmod2x
save "testc12", replace
clear

use "trainc12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc12"
predict yhat, xb
rename yhat nortlm2x
save "testc12", replace
clear

* d12
* RwandaXd lpro12x

use "traind12"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd12"
predict yhat, xb
rename yhat drottmod12x
save "testd12", replace
clear

use "traind12"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd12"
predict yhat, xb
rename yhat nortlm12x
save "testd12", replace
clear

* RwandaXd lpro1x

use "traind12"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd12"
predict yhat, xb
rename yhat drottmod1x
save "testd12", replace
clear

use "traind12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd12"
predict yhat, xb
rename yhat nortlm1x
save "testd12", replace
clear

* RwandaXd lpro2x

use "traind12"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd12"
predict yhat, xb
rename yhat drottmod2x
save "testd12", replace
clear

use "traind12"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd12"
predict yhat, xb
rename yhat nortlm2x
save "testd12", replace
clear

* a13

* RwandaXd lpro12x

use "traina13"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa13"
predict yhat, xb
rename yhat drottmod12x
save "testa13", replace
clear

use "traina13"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa13"
predict yhat, xb
rename yhat nortlm12x
save "testa13", replace
clear

* RwandaXd lpro1x

use "traina13"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa13"
predict yhat, xb
rename yhat drottmod1x
save "testa13", replace
clear

use "traina13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa13"
predict yhat, xb
rename yhat nortlm1x
save "testa13", replace
clear

* RwandaXd lpro2x

use "traina13"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa13"
predict yhat, xb
rename yhat drottmod2x
save "testa13", replace
clear

use "traina13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa13"
predict yhat, xb
rename yhat nortlm2x
save "testa13", replace
clear

* b13
* RwandaXd lpro12x

use "trainb13"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb13"
predict yhat, xb
rename yhat drottmod12x
save "testb13", replace
clear

use "trainb13"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb13"
predict yhat, xb
rename yhat nortlm12x
save "testb13", replace
clear

* RwandaXd lpro1x

use "trainb13"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb13"
predict yhat, xb
rename yhat drottmod1x
save "testb13", replace
clear

use "trainb13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb13"
predict yhat, xb
rename yhat nortlm1x
save "testb13", replace
clear

* RwandaXd lpro2x

use "trainb13"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb13"
predict yhat, xb
rename yhat drottmod2x
save "testb13", replace
clear

use "trainb13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb13"
predict yhat, xb
rename yhat nortlm2x
save "testb13", replace
clear

* c13
* RwandaXd lpro12x

use "trainc13"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc13"
predict yhat, xb
rename yhat drottmod12x
save "testc13", replace
clear

use "trainc13"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc13"
predict yhat, xb
rename yhat nortlm12x
save "testc13", replace
clear

* RwandaXd lpro1x

use "trainc13"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc13"
predict yhat, xb
rename yhat drottmod1x
save "testc13", replace
clear

use "trainc13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc13"
predict yhat, xb
rename yhat nortlm1x
save "testc13", replace
clear

* RwandaXd lpro2x

use "trainc13"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc13"
predict yhat, xb
rename yhat drottmod2x
save "testc13", replace
clear

use "trainc13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc13"
predict yhat, xb
rename yhat nortlm2x
save "testc13", replace
clear

* d13
* RwandaXd lpro12x

use "traind13"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd13"
predict yhat, xb
rename yhat drottmod12x
save "testd13", replace
clear

use "traind13"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd13"
predict yhat, xb
rename yhat nortlm12x
save "testd13", replace
clear

* RwandaXd lpro1x

use "traind13"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd13"
predict yhat, xb
rename yhat drottmod1x
save "testd13", replace
clear

use "traind13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd13"
predict yhat, xb
rename yhat nortlm1x
save "testd13", replace
clear

* RwandaXd lpro2x

use "traind13"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd13"
predict yhat, xb
rename yhat drottmod2x
save "testd13", replace
clear

use "traind13"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd13"
predict yhat, xb
rename yhat nortlm2x
save "testd13", replace
clear


* a14
* RwandaXd lpro12x

use "traina14"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa14"
predict yhat, xb
rename yhat drottmod12x
save "testa14", replace
clear

use "traina14"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa14"
predict yhat, xb
rename yhat nortlm12x
save "testa14", replace
clear

* RwandaXd lpro1x

use "traina14"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa14"
predict yhat, xb
rename yhat drottmod1x
save "testa14", replace
clear

use "traina14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa14"
predict yhat, xb
rename yhat nortlm1x
save "testa14", replace
clear

* RwandaXd lpro2x

use "traina14"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa14"
predict yhat, xb
rename yhat drottmod2x
save "testa14", replace
clear

use "traina14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa14"
predict yhat, xb
rename yhat nortlm2x
save "testa14", replace
clear

* b14
* RwandaXd lpro12x

use "trainb14"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb14"
predict yhat, xb
rename yhat drottmod12x
save "testb14", replace
clear

use "trainb14"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb14"
predict yhat, xb
rename yhat nortlm12x
save "testb14", replace
clear

* RwandaXd lpro1x

use "trainb14"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb14"
predict yhat, xb
rename yhat drottmod1x
save "testb14", replace
clear

use "trainb14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb14"
predict yhat, xb
rename yhat nortlm1x
save "testb14", replace
clear

* RwandaXd lpro2x

use "trainb14"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb14"
predict yhat, xb
rename yhat drottmod2x
save "testb14", replace
clear

use "trainb14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb14"
predict yhat, xb
rename yhat nortlm2x
save "testb14", replace
clear

* c14
* RwandaXd lpro12x

use "trainc14"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc14"
predict yhat, xb
rename yhat drottmod12x
save "testc14", replace
clear

use "trainc14"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc14"
predict yhat, xb
rename yhat nortlm12x
save "testc14", replace
clear

* RwandaXd lpro1x

use "trainc14"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc14"
predict yhat, xb
rename yhat drottmod1x
save "testc14", replace
clear

use "trainc14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc14"
predict yhat, xb
rename yhat nortlm1x
save "testc14", replace
clear

* RwandaXd lpro2x

use "trainc14"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc14"
predict yhat, xb
rename yhat drottmod2x
save "testc14", replace
clear

use "trainc14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc14"
predict yhat, xb
rename yhat nortlm2x
save "testc14", replace
clear


* d14
* RwandaXd lpro12x

use "traind14"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd14"
predict yhat, xb
rename yhat drottmod12x
save "testd14", replace
clear

use "traind14"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd14"
predict yhat, xb
rename yhat nortlm12x
save "testd14", replace
clear

* RwandaXd lpro1x

use "traind14"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd14"
predict yhat, xb
rename yhat drottmod1x
save "testd14", replace
clear

use "traind14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd14"
predict yhat, xb
rename yhat nortlm1x
save "testd14", replace
clear

* RwandaXd lpro2x

use "traind14"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd14"
predict yhat, xb
rename yhat drottmod2x
save "testd14", replace
clear

use "traind14"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd14"
predict yhat, xb
rename yhat nortlm2x
save "testd14", replace
clear

* a15
* RwandaXd lpro12x

use "traina15"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa15"
predict yhat, xb
rename yhat drottmod12x
save "testa15", replace
clear

use "traina15"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa15"
predict yhat, xb
rename yhat nortlm12x
save "testa15", replace
clear

* RwandaXd lpro1x

use "traina15"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa15"
predict yhat, xb
rename yhat drottmod1x
save "testa15", replace
clear

use "traina15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa15"
predict yhat, xb
rename yhat nortlm1x
save "testa15", replace
clear

* RwandaXd lpro2x

use "traina15"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa15"
predict yhat, xb
rename yhat drottmod2x
save "testa15", replace
clear

use "traina15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa15"
predict yhat, xb
rename yhat nortlm2x
save "testa15", replace
clear

* b15
* RwandaXd lpro12x

use "trainb15"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb15"
predict yhat, xb
rename yhat drottmod12x
save "testb15", replace
clear

use "trainb15"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb15"
predict yhat, xb
rename yhat nortlm12x
save "testb15", replace
clear

* RwandaXd lpro1x

use "trainb15"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb15"
predict yhat, xb
rename yhat drottmod1x
save "testb15", replace
clear

use "trainb15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb15"
predict yhat, xb
rename yhat nortlm1x
save "testb15", replace
clear

* RwandaXd lpro2x

use "trainb15"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb15"
predict yhat, xb
rename yhat drottmod2x
save "testb15", replace

clear
use "trainb15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb15"
predict yhat, xb
rename yhat nortlm2x
save "testb15", replace
clear

* c15
* RwandaXd lpro12x

use "trainc15"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc15"
predict yhat, xb
rename yhat drottmod12x
save "testc15", replace
clear

use "trainc15"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc15"
predict yhat, xb
rename yhat nortlm12x
save "testc15", replace
clear

* RwandaXd lpro1x

use "trainc15"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc15"
predict yhat, xb
rename yhat drottmod1x
save "testc15", replace
clear

use "trainc15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc15"
predict yhat, xb
rename yhat nortlm1x
save "testc15", replace
clear

* RwandaXd lpro2x

use "trainc15"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc15"
predict yhat, xb
rename yhat drottmod2x
save "testc15", replace
clear

use "trainc15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc15"
predict yhat, xb
rename yhat nortlm2x
save "testc15", replace
clear

* d15
* RwandaXd lpro12x

use "traind15"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd15"
predict yhat, xb
rename yhat drottmod12x
save "testd15", replace
clear

use "traind15"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd15"
predict yhat, xb
rename yhat nortlm12x
save "testd15", replace
clear

* RwandaXd lpro1x

use "traind15"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd15"
predict yhat, xb
rename yhat drottmod1x
save "testd15", replace
clear

use "traind15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd15"
predict yhat, xb
rename yhat nortlm1x
save "testd15", replace
clear

* RwandaXd lpro2x

use "traind15"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd15"
predict yhat, xb
rename yhat drottmod2x
save "testd15", replace
clear

use "traind15"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd15"
predict yhat, xb
rename yhat nortlm2x
save "testd15", replace
clear

* a16
* RwandaXd lpro12x

use "traina16"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa16"
predict yhat, xb
rename yhat drottmod12x
save "testa16", replace
clear

use "traina16"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa16"
predict yhat, xb
rename yhat nortlm12x
save "testa16", replace
clear

* RwandaXd lpro1x

use "traina16"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa16"
predict yhat, xb
rename yhat drottmod1x
save "testa16", replace
clear

use "traina16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa16"
predict yhat, xb
rename yhat nortlm1x
save "testa16", replace
clear

* RwandaXd lpro2x

use "traina16"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa16"
predict yhat, xb
rename yhat drottmod2x
save "testa16", replace
clear

use "traina16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa16"
predict yhat, xb
rename yhat nortlm2x
save "testa16", replace
clear

* b16
* RwandaXd lpro12x

use "trainb16"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb16"
predict yhat, xb
rename yhat drottmod12x
save "testb16", replace
clear

use "trainb16"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb16"
predict yhat, xb
rename yhat nortlm12x
save "testb16", replace
clear

* RwandaXd lpro1x

use "trainb16"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb16"
predict yhat, xb
rename yhat drottmod1x
save "testb16", replace
clear

use "trainb16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb16"
predict yhat, xb
rename yhat nortlm1x
save "testb16", replace
clear

* RwandaXd lpro2x

use "trainb16"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb16"
predict yhat, xb
rename yhat drottmod2x
save "testb16", replace
clear

use "trainb16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb16"
predict yhat, xb
rename yhat nortlm2x
save "testb16", replace
clear

* c16
* RwandaXd lpro12x

use "trainc16"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc16"
predict yhat, xb
rename yhat drottmod12x
save "testc16", replace
clear

use "trainc16"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc16"
predict yhat, xb
rename yhat nortlm12x
save "testc16", replace
clear

* RwandaXd lpro1x

use "trainc16"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc16"
predict yhat, xb
rename yhat drottmod1x
save "testc16", replace
clear

use "trainc16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc16"
predict yhat, xb
rename yhat nortlm1x
save "testc16", replace
clear

* RwandaXd lpro2x

use "trainc16"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc16"
predict yhat, xb
rename yhat drottmod2x
save "testc16", replace
clear

use "trainc16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc16"
predict yhat, xb
rename yhat nortlm2x
save "testc16", replace
clear

* d16
* RwandaXd lpro12x

use "traind16"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd16"
predict yhat, xb
rename yhat drottmod12x
save "testd16", replace
clear

use "traind16"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd16"
predict yhat, xb
rename yhat nortlm12x
save "testd16", replace
clear

* RwandaXd lpro1x

use "traind16"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd16"
predict yhat, xb
rename yhat drottmod1x
save "testd16", replace
clear

use "traind16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd16"
predict yhat, xb
rename yhat nortlm1x
save "testd16", replace
clear

* RwandaXd lpro2x

use "traind16"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd16"
predict yhat, xb
rename yhat drottmod2x
save "testd16", replace
clear

use "traind16"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd16"
predict yhat, xb
rename yhat nortlm2x
save "testd16", replace
clear

* a17
* RwandaXd lpro12x

use "traina17"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa17"
predict yhat, xb
rename yhat drottmod12x
save "testa17", replace
clear

use "traina17"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa17"
predict yhat, xb
rename yhat nortlm12x
save "testa17", replace
clear

* RwandaXd lpro1x

use "traina17"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa17"
predict yhat, xb
rename yhat drottmod1x
save "testa17", replace
clear

use "traina17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa17"
predict yhat, xb
rename yhat nortlm1x
save "testa17", replace
clear

* RwandaXd lpro2x

use "traina17"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa17"
predict yhat, xb
rename yhat drottmod2x
save "testa17", replace
clear

use "traina17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa17"
predict yhat, xb
rename yhat nortlm2x
save "testa17", replace
clear

* b17
* RwandaXd lpro12x

use "trainb17"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb17"
predict yhat, xb
rename yhat drottmod12x
save "testb17", replace
clear

use "trainb17"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb17"
predict yhat, xb
rename yhat nortlm12x
save "testb17", replace
clear

* RwandaXd lpro1x

use "trainb17"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb17"
predict yhat, xb
rename yhat drottmod1x
save "testb17", replace
clear

use "trainb17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb17"
predict yhat, xb
rename yhat nortlm1x
save "testb17", replace
clear

* RwandaXd lpro2x

use "trainb17"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb17"
predict yhat, xb
rename yhat drottmod2x
save "testb17", replace
clear

use "trainb17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb17"
predict yhat, xb
rename yhat nortlm2x
save "testb17", replace
clear

* c17
* RwandaXd lpro12x

use "trainc17"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc17"
predict yhat, xb
rename yhat drottmod12x
save "testc17", replace
clear

use "trainc17"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc17"
predict yhat, xb
rename yhat nortlm12x
save "testc17", replace
clear

* RwandaXd lpro1x

use "trainc17"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc17"
predict yhat, xb
rename yhat drottmod1x
save "testc17", replace
clear

use "trainc17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc17"
predict yhat, xb
rename yhat nortlm1x
save "testc17", replace
clear

* RwandaXd lpro2x

use "trainc17"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc17"
predict yhat, xb
rename yhat drottmod2x
save "testc17", replace
clear

use "trainc17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc17"
predict yhat, xb
rename yhat nortlm2x
save "testc17", replace
clear


* d17
* RwandaXd lpro12x

use "traind17"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd17"
predict yhat, xb
rename yhat drottmod12x
save "testd17", replace
clear

use "traind17"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd17"
predict yhat, xb
rename yhat nortlm12x
save "testd17", replace
clear

* RwandaXd lpro1x

use "traind17"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd17"
predict yhat, xb
rename yhat drottmod1x
save "testd17", replace
clear

use "traind17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd17"
predict yhat, xb
rename yhat nortlm1x
save "testd17", replace
clear

* RwandaXd lpro2x

use "traind17"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd17"
predict yhat, xb
rename yhat drottmod2x
save "testd17", replace
clear

use "traind17"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd17"
predict yhat, xb
rename yhat nortlm2x
save "testd17", replace
clear

* a18
* RwandaXd lpro12x

use "traina18"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa18"
predict yhat, xb
rename yhat drottmod12x
save "testa18", replace
clear

use "traina18"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa18"
predict yhat, xb
rename yhat nortlm12x
save "testa18", replace
clear

* RwandaXd lpro1x

use "traina18"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa18"
predict yhat, xb
rename yhat drottmod1x
save "testa18", replace
clear

use "traina18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa18"
predict yhat, xb
rename yhat nortlm1x
save "testa18", replace
clear

* RwandaXd lpro2x

use "traina18"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa18"
predict yhat, xb
rename yhat drottmod2x
save "testa18", replace
clear

use "traina18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa18"
predict yhat, xb
rename yhat nortlm2x
save "testa18", replace
clear

* b18
* RwandaXd lpro12x

use "trainb18"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb18"
predict yhat, xb
rename yhat drottmod12x
save "testb18", replace
clear

use "trainb18"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb18"
predict yhat, xb
rename yhat nortlm12x
save "testb18", replace
clear

* RwandaXd lpro1x

use "trainb18"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb18"
predict yhat, xb
rename yhat drottmod1x
save "testb18", replace
clear

use "trainb18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb18"
predict yhat, xb
rename yhat nortlm1x
save "testb18", replace
clear

* RwandaXd lpro2x

use "trainb18"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb18"
predict yhat, xb
rename yhat drottmod2x
save "testb18", replace
clear

use "trainb18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb18"
predict yhat, xb
rename yhat nortlm2x
save "testb18", replace
clear

* c18
* RwandaXd lpro12x

use "trainc18"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc18"
predict yhat, xb
rename yhat drottmod12x
save "testc18", replace
clear

use "trainc18"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc18"
predict yhat, xb
rename yhat nortlm12x
save "testc18", replace
clear

* RwandaXd lpro1x

use "trainc18"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc18"
predict yhat, xb
rename yhat drottmod1x
save "testc18", replace
clear

use "trainc18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc18"
predict yhat, xb
rename yhat nortlm1x
save "testc18", replace
clear

* RwandaXd lpro2x

use "trainc18"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc18"
predict yhat, xb
rename yhat drottmod2x
save "testc18", replace
clear

use "trainc18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc18"
predict yhat, xb
rename yhat nortlm2x
save "testc18", replace
clear

* d18
* RwandaXd lpro12x

use "traind18"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd18"
predict yhat, xb
rename yhat drottmod12x
save "testd18", replace
clear

use "traind18"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd18"
predict yhat, xb
rename yhat nortlm12x
save "testd18", replace
clear

* RwandaXd lpro1x

use "traind18"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd18"
predict yhat, xb
rename yhat drottmod1x
save "testd18", replace
clear

use "traind18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd18"
predict yhat, xb
rename yhat nortlm1x
save "testd18", replace
clear

* RwandaXd lpro2x

use "traind18"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd18"
predict yhat, xb
rename yhat drottmod2x
save "testd18", replace
clear

use "traind18"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd18"
predict yhat, xb
rename yhat nortlm2x
save "testd18", replace
clear

* a19
* RwandaXd lpro12x

use "traina19"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa19"
predict yhat, xb
rename yhat drottmod12x
save "testa19", replace
clear

use "traina19"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa19"
predict yhat, xb
rename yhat nortlm12x
save "testa19", replace
clear

* RwandaXd lpro1x

use "traina19"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa19"
predict yhat, xb
rename yhat drottmod1x
save "testa19", replace
clear

use "traina19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa19"
predict yhat, xb
rename yhat nortlm1x
save "testa19", replace
clear

* RwandaXd lpro2x

use "traina19"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa19"
predict yhat, xb
rename yhat drottmod2x
save "testa19", replace
clear

use "traina19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa19"
predict yhat, xb
rename yhat nortlm2x
save "testa19", replace
clear

* b19
* RwandaXd lpro12x

use "trainb19"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb19"
predict yhat, xb
rename yhat drottmod12x
save "testb19", replace
clear

use "trainb19"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb19"
predict yhat, xb
rename yhat nortlm12x
save "testb19", replace
clear

* RwandaXd lpro1x

use "trainb19"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb19"
predict yhat, xb
rename yhat drottmod1x
save "testb19", replace
clear

use "trainb19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb19"
predict yhat, xb
rename yhat nortlm1x
save "testb19", replace
clear

* RwandaXd lpro2x

use "trainb19"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb19"
predict yhat, xb
rename yhat drottmod2x
save "testb19", replace
clear

use "trainb19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb19"
predict yhat, xb
rename yhat nortlm2x
save "testb19", replace
clear

* c19
* RwandaXd lpro12x

use "trainc19"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc19"
predict yhat, xb
rename yhat drottmod12x
save "testc19", replace
clear

use "trainc19"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc19"
predict yhat, xb
rename yhat nortlm12x
save "testc19", replace
clear

* RwandaXd lpro1x

use "trainc19"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc19"
predict yhat, xb
rename yhat drottmod1x
save "testc19", replace
clear

use "trainc19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc19"
predict yhat, xb
rename yhat nortlm1x
save "testc19", replace
clear

* RwandaXd lpro2x

use "trainc19"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc19"
predict yhat, xb
rename yhat drottmod2x
save "testc19", replace
clear

use "trainc19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc19"
predict yhat, xb
rename yhat nortlm2x
save "testc19", replace
clear

* d19
* RwandaXd lpro12x

use "traind19"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd19"
predict yhat, xb
rename yhat drottmod12x
save "testd19", replace
clear

use "traind19"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd19"
predict yhat, xb
rename yhat nortlm12x
save "testd19", replace
clear

* RwandaXd lpro1x

use "traind19"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd19"
predict yhat, xb
rename yhat drottmod1x
save "testd19", replace
clear

use "traind19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd19"
predict yhat, xb
rename yhat nortlm1x
save "testd19", replace
clear

* RwandaXd lpro2x

use "traind19"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd19"
predict yhat, xb
rename yhat drottmod2x
save "testd19", replace
clear

use "traind19"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd19"
predict yhat, xb
rename yhat nortlm2x
save "testd19", replace
clear


* a20
* RwandaXd lpro12x

use "traina20"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa20"
predict yhat, xb
rename yhat drottmod12x
save "testa20", replace
clear

use "traina20"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa20"
predict yhat, xb
rename yhat nortlm12x
save "testa20", replace
clear

* RwandaXd lpro1x

use "traina20"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa20"
predict yhat, xb
rename yhat drottmod1x
save "testa20", replace
clear

use "traina20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa20"
predict yhat, xb
rename yhat nortlm1x
save "testa20", replace
clear

* RwandaXd lpro2x

use "traina20"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa20"
predict yhat, xb
rename yhat drottmod2x
save "testa20", replace
clear

use "traina20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa20"
predict yhat, xb
rename yhat nortlm2x
save "testa20", replace
clear

* b20
* RwandaXd lpro12x

use "trainb20"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb20"
predict yhat, xb
rename yhat drottmod12x
save "testb20", replace
clear

use "trainb20"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb20"
predict yhat, xb
rename yhat nortlm12x
save "testb20", replace
clear

* RwandaXd lpro1x

use "trainb20"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb20"
predict yhat, xb
rename yhat drottmod1x
save "testb20", replace
clear

use "trainb20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb20"
predict yhat, xb
rename yhat nortlm1x
save "testb20", replace
clear

* RwandaXd lpro2x

use "trainb20"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb20"
predict yhat, xb
rename yhat drottmod2x
save "testb20", replace
clear

use "trainb20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb20"
predict yhat, xb
rename yhat nortlm2x
save "testb20", replace
clear

* c20
* RwandaXd lpro12x

use "trainc20"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc20"
predict yhat, xb
rename yhat drottmod12x
save "testc20", replace
clear

use "trainc20"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc20"
predict yhat, xb
rename yhat nortlm12x
save "testc20", replace
clear

* RwandaXd lpro1x
use "trainc20"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc20"
predict yhat, xb
rename yhat drottmod1x
save "testc20", replace
clear

use "trainc20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc20"
predict yhat, xb
rename yhat nortlm1x
save "testc20", replace
clear

* RwandaXd lpro2x

use "trainc20"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc20"
predict yhat, xb
rename yhat drottmod2x
save "testc20", replace
clear

use "trainc20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc20"
predict yhat, xb
rename yhat nortlm2x
save "testc20", replace
clear


* d20
* RwandaXd lpro12x

use "traind20"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd20"
predict yhat, xb
rename yhat drottmod12x
save "testd20", replace
clear

use "traind20"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd20"
predict yhat, xb
rename yhat nortlm12x
save "testd20", replace
clear

* RwandaXd lpro1x

use "traind20"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd20"
predict yhat, xb
rename yhat drottmod1x
save "testd20", replace
clear

use "traind20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd20"
predict yhat, xb
rename yhat nortlm1x
save "testd20", replace
clear

* RwandaXd lpro2x

use "traind20"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd20"
predict yhat, xb
rename yhat drottmod2x
save "testd20", replace
clear

use "traind20"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd20"
predict yhat, xb
rename yhat nortlm2x
save "testd20", replace
clear


* a21
* RwandaXd lpro12x

use "traina21"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa21"
predict yhat, xb
rename yhat drottmod12x
save "testa21", replace
clear

use "traina21"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa21"
predict yhat, xb
rename yhat nortlm12x
save "testa21", replace
clear

* RwandaXd lpro1x

use "traina21"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa21"
predict yhat, xb
rename yhat drottmod1x
save "testa21", replace
clear

use "traina21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa21"
predict yhat, xb
rename yhat nortlm1x
save "testa21", replace
clear

* RwandaXd lpro2x

use "traina21"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa21"
predict yhat, xb
rename yhat drottmod2x
save "testa21", replace
clear

use "traina21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa21"
predict yhat, xb
rename yhat nortlm2x
save "testa21", replace
clear

* b21
* RwandaXd lpro12x

use "trainb21"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb21"
predict yhat, xb
rename yhat drottmod12x
save "testb21", replace
clear

use "trainb21"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb21"
predict yhat, xb
rename yhat nortlm12x
save "testb21", replace
clear

* RwandaXd lpro1x

use "trainb21"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb21"
predict yhat, xb
rename yhat drottmod1x
save "testb21", replace
clear

use "trainb21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb21"
predict yhat, xb
rename yhat nortlm1x
save "testb21", replace
clear

* RwandaXd lpro2x

use "trainb21"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb21"
predict yhat, xb
rename yhat drottmod2x
save "testb21", replace
clear

use "trainb21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb21"
predict yhat, xb
rename yhat nortlm2x
save "testb21", replace
clear

* c21
* RwandaXd lpro12x

use "trainc21"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc21"
predict yhat, xb
rename yhat drottmod12x
save "testc21", replace
clear

use "trainc21"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc21"
predict yhat, xb
rename yhat nortlm12x
save "testc21", replace
clear

* RwandaXd lpro1x

use "trainc21"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc21"
predict yhat, xb
rename yhat drottmod1x
save "testc21", replace
clear

use "trainc21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc21"
predict yhat, xb
rename yhat nortlm1x
save "testc21", replace
clear

* RwandaXd lpro2x

use "trainc21"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc21"
predict yhat, xb
rename yhat drottmod2x
save "testc21", replace
clear

use "trainc21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc21"
predict yhat, xb
rename yhat nortlm2x
save "testc21", replace
clear


* d21
* RwandaXd lpro12x

use "traind21"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd21"
predict yhat, xb
rename yhat drottmod12x
save "testd21", replace
clear

use "traind21"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd21"
predict yhat, xb
rename yhat nortlm12x
save "testd21", replace
clear

* RwandaXd lpro1x

use "traind21"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd21"
predict yhat, xb
rename yhat drottmod1x
save "testd21", replace
clear

use "traind21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd21"
predict yhat, xb
rename yhat nortlm1x
save "testd21", replace
clear

* RwandaXd lpro2x

use "traind21"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd21"
predict yhat, xb
rename yhat drottmod2x
save "testd21", replace
clear

use "traind21"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd21"
predict yhat, xb
rename yhat nortlm2x
save "testd21", replace
clear

* a22
* RwandaXd lpro12x

use "traina22"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa22"
predict yhat, xb
rename yhat drottmod12x
save "testa22", replace
clear

use "traina22"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa22"
predict yhat, xb
rename yhat nortlm12x
save "testa22", replace
clear

* RwandaXd lpro1x

use "traina22"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa22"
predict yhat, xb
rename yhat drottmod1x
save "testa22", replace
clear

use "traina22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa22"
predict yhat, xb
rename yhat nortlm1x
save "testa22", replace
clear

* RwandaXd lpro2x

use "traina22"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa22"
predict yhat, xb
rename yhat drottmod2x
save "testa22", replace
clear

use "traina22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa22"
predict yhat, xb
rename yhat nortlm2x
save "testa22", replace
clear

* b22
* RwandaXd lpro12x

use "trainb22"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb22"
predict yhat, xb
rename yhat drottmod12x
save "testb22", replace
clear

use "trainb22"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb22"
predict yhat, xb
rename yhat nortlm12x
save "testb22", replace
clear

* RwandaXd lpro1x

use "trainb22"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb22"
predict yhat, xb
rename yhat drottmod1x
save "testb22", replace
clear

use "trainb22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb22"
predict yhat, xb
rename yhat nortlm1x
save "testb22", replace
clear

* RwandaXd lpro2x

use "trainb22"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb22"
predict yhat, xb
rename yhat drottmod2x
save "testb22", replace
clear

use "trainb22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb22"
predict yhat, xb
rename yhat nortlm2x
save "testb22", replace
clear

* c22
* RwandaXd lpro12x

use "trainc22"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc22"
predict yhat, xb
rename yhat drottmod12x
save "testc22", replace
clear

use "trainc22"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc22"
predict yhat, xb
rename yhat nortlm12x
save "testc22", replace
clear

* RwandaXd lpro1x

use "trainc22"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc22"
predict yhat, xb
rename yhat drottmod1x
save "testc22", replace
clear

use "trainc22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc22"
predict yhat, xb
rename yhat nortlm1x
save "testc22", replace
clear

* RwandaXd lpro2x

use "trainc22"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc22"
predict yhat, xb
rename yhat drottmod2x
save "testc22", replace
clear

use "trainc22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc22"
predict yhat, xb
rename yhat nortlm2x
save "testc22", replace
clear

* d22
* RwandaXd lpro12x

use "traind22"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd22"
predict yhat, xb
rename yhat drottmod12x
save "testd22", replace
clear

use "traind22"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd22"
predict yhat, xb
rename yhat nortlm12x
save "testd22", replace
clear

* RwandaXd lpro1x

use "traind22"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd22"
predict yhat, xb
rename yhat drottmod1x
save "testd22", replace
clear

use "traind22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd22"
predict yhat, xb
rename yhat nortlm1x
save "testd22", replace
clear

* RwandaXd lpro2x

use "traind22"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd22"
predict yhat, xb
rename yhat drottmod2x
save "testd22", replace
clear

use "traind22"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd22"
predict yhat, xb
rename yhat nortlm2x
save "testd22", replace
clear

* a23

* RwandaXd lpro12x

use "traina23"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa23"
predict yhat, xb
rename yhat drottmod12x
save "testa23", replace
clear

use "traina23"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa23"
predict yhat, xb
rename yhat nortlm12x
save "testa23", replace
clear

* RwandaXd lpro1x

use "traina23"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa23"
predict yhat, xb
rename yhat drottmod1x
save "testa23", replace
clear

use "traina23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa23"
predict yhat, xb
rename yhat nortlm1x
save "testa23", replace
clear

* RwandaXd lpro2x

use "traina23"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa23"
predict yhat, xb
rename yhat drottmod2x
save "testa23", replace
clear

use "traina23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa23"
predict yhat, xb
rename yhat nortlm2x
save "testa23", replace
clear

* b23
* RwandaXd lpro12x

use "trainb23"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb23"
predict yhat, xb
rename yhat drottmod12x
save "testb23", replace
clear

use "trainb23"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb23"
predict yhat, xb
rename yhat nortlm12x
save "testb23", replace
clear

* RwandaXd lpro1x

use "trainb23"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb23"
predict yhat, xb
rename yhat drottmod1x
save "testb23", replace
clear

use "trainb23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb23"
predict yhat, xb
rename yhat nortlm1x
save "testb23", replace
clear

* RwandaXd lpro2x

use "trainb23"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb23"
predict yhat, xb
rename yhat drottmod2x
save "testb23", replace
clear

use "trainb23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb23"
predict yhat, xb
rename yhat nortlm2x
save "testb23", replace
clear

* c23
* RwandaXd lpro12x

use "trainc23"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc23"
predict yhat, xb
rename yhat drottmod12x
save "testc23", replace
clear

use "trainc23"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc23"
predict yhat, xb
rename yhat nortlm12x
save "testc23", replace
clear

* RwandaXd lpro1x

use "trainc23"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc23"
predict yhat, xb
rename yhat drottmod1x
save "testc23", replace
clear

use "trainc23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc23"
predict yhat, xb
rename yhat nortlm1x
save "testc23", replace
clear

* RwandaXd lpro2x

use "trainc23"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc23"
predict yhat, xb
rename yhat drottmod2x
save "testc23", replace
clear

use "trainc23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc23"
predict yhat, xb
rename yhat nortlm2x
save "testc23", replace
clear

* d23
* RwandaXd lpro12x

use "traind23"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd23"
predict yhat, xb
rename yhat drottmod12x
save "testd23", replace
clear

use "traind23"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd23"
predict yhat, xb
rename yhat nortlm12x
save "testd23", replace
clear

* RwandaXd lpro1x

use "traind23"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd23"
predict yhat, xb
rename yhat drottmod1x
save "testd23", replace
clear

use "traind23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd23"
predict yhat, xb
rename yhat nortlm1x
save "testd23", replace
clear

* RwandaXd lpro2x

use "traind23"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd23"
predict yhat, xb
rename yhat drottmod2x
save "testd23", replace
clear

use "traind23"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd23"
predict yhat, xb
rename yhat nortlm2x
save "testd23", replace
clear


* a24
* RwandaXd lpro12x

use "traina24"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa24"
predict yhat, xb
rename yhat drottmod12x
save "testa24", replace
clear

use "traina24"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa24"
predict yhat, xb
rename yhat nortlm12x
save "testa24", replace
clear

* RwandaXd lpro1x

use "traina24"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa24"
predict yhat, xb
rename yhat drottmod1x
save "testa24", replace
clear

use "traina24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa24"
predict yhat, xb
rename yhat nortlm1x
save "testa24", replace
clear

* RwandaXd lpro2x

use "traina24"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa24"
predict yhat, xb
rename yhat drottmod2x
save "testa24", replace
clear

use "traina24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa24"
predict yhat, xb
rename yhat nortlm2x
save "testa24", replace
clear

* b24
* RwandaXd lpro12x

use "trainb24"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb24"
predict yhat, xb
rename yhat drottmod12x
save "testb24", replace
clear

use "trainb24"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb24"
predict yhat, xb
rename yhat nortlm12x
save "testb24", replace
clear

* RwandaXd lpro1x

use "trainb24"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb24"
predict yhat, xb
rename yhat drottmod1x
save "testb24", replace
clear

use "trainb24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb24"
predict yhat, xb
rename yhat nortlm1x
save "testb24", replace
clear

* RwandaXd lpro2x

use "trainb24"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb24"
predict yhat, xb
rename yhat drottmod2x
save "testb24", replace
clear

use "trainb24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb24"
predict yhat, xb
rename yhat nortlm2x
save "testb24", replace
clear

* c24
* RwandaXd lpro12x

use "trainc24"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc24"
predict yhat, xb
rename yhat drottmod12x
save "testc24", replace
clear

use "trainc24"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc24"
predict yhat, xb
rename yhat nortlm12x
save "testc24", replace
clear

* RwandaXd lpro1x

use "trainc24"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc24"
predict yhat, xb
rename yhat drottmod1x
save "testc24", replace
clear

use "trainc24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc24"
predict yhat, xb
rename yhat nortlm1x
save "testc24", replace
clear

* RwandaXd lpro2x

use "trainc24"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc24"
predict yhat, xb
rename yhat drottmod2x
save "testc24", replace
clear

use "trainc24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc24"
predict yhat, xb
rename yhat nortlm2x
save "testc24", replace
clear


* d24
* RwandaXd lpro12x

use "traind24"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd24"
predict yhat, xb
rename yhat drottmod12x
save "testd24", replace
clear

use "traind24"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd24"
predict yhat, xb
rename yhat nortlm12x
save "testd24", replace
clear

* RwandaXd lpro1x

use "traind24"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd24"
predict yhat, xb
rename yhat drottmod1x
save "testd24", replace
clear

use "traind24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd24"
predict yhat, xb
rename yhat nortlm1x
save "testd24", replace
clear

* RwandaXd lpro2x

use "traind24"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd24"
predict yhat, xb
rename yhat drottmod2x
save "testd24", replace
clear

use "traind24"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd24"
predict yhat, xb
rename yhat nortlm2x
save "testd24", replace
clear

* a25
* RwandaXd lpro12x

use "traina25"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa25"
predict yhat, xb
rename yhat drottmod12x
save "testa25", replace
clear

use "traina25"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa25"
predict yhat, xb
rename yhat nortlm12x
save "testa25", replace
clear

* RwandaXd lpro1x

use "traina25"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa25"
predict yhat, xb
rename yhat drottmod1x
save "testa25", replace
clear

use "traina25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa25"
predict yhat, xb
rename yhat nortlm1x
save "testa25", replace
clear

* RwandaXd lpro2x

use "traina25"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa25"
predict yhat, xb
rename yhat drottmod2x
save "testa25", replace
clear

use "traina25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa25"
predict yhat, xb
rename yhat nortlm2x
save "testa25", replace
clear

* b25
* RwandaXd lpro12x

use "trainb25"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb25"
predict yhat, xb
rename yhat drottmod12x
save "testb25", replace
clear

use "trainb25"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb25"
predict yhat, xb
rename yhat nortlm12x
save "testb25", replace
clear

* RwandaXd lpro1x

use "trainb25"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb25"
predict yhat, xb
rename yhat drottmod1x
save "testb25", replace
clear

use "trainb25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb25"
predict yhat, xb
rename yhat nortlm1x
save "testb25", replace
clear

* RwandaXd lpro2x

use "trainb25"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb25"
predict yhat, xb
rename yhat drottmod2x
save "testb25", replace

clear
use "trainb25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb25"
predict yhat, xb
rename yhat nortlm2x
save "testb25", replace
clear

* c25
* RwandaXd lpro12x

use "trainc25"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc25"
predict yhat, xb
rename yhat drottmod12x
save "testc25", replace
clear

use "trainc25"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc25"
predict yhat, xb
rename yhat nortlm12x
save "testc25", replace
clear

* RwandaXd lpro1x

use "trainc25"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc25"
predict yhat, xb
rename yhat drottmod1x
save "testc25", replace
clear

use "trainc25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc25"
predict yhat, xb
rename yhat nortlm1x
save "testc25", replace
clear

* RwandaXd lpro2x

use "trainc25"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc25"
predict yhat, xb
rename yhat drottmod2x
save "testc25", replace
clear

use "trainc25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc25"
predict yhat, xb
rename yhat nortlm2x
save "testc25", replace
clear

* d25
* RwandaXd lpro12x

use "traind25"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd25"
predict yhat, xb
rename yhat drottmod12x
save "testd25", replace
clear

use "traind25"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd25"
predict yhat, xb
rename yhat nortlm12x
save "testd25", replace
clear

* RwandaXd lpro1x

use "traind25"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd25"
predict yhat, xb
rename yhat drottmod1x
save "testd25", replace
clear

use "traind25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd25"
predict yhat, xb
rename yhat nortlm1x
save "testd25", replace
clear

* RwandaXd lpro2x

use "traind25"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd25"
predict yhat, xb
rename yhat drottmod2x
save "testd25", replace
clear

use "traind25"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd25"
predict yhat, xb
rename yhat nortlm2x
save "testd25", replace
clear

* a26
* RwandaXd lpro12x

use "traina26"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa26"
predict yhat, xb
rename yhat drottmod12x
save "testa26", replace
clear

use "traina26"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa26"
predict yhat, xb
rename yhat nortlm12x
save "testa26", replace
clear

* RwandaXd lpro1x

use "traina26"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa26"
predict yhat, xb
rename yhat drottmod1x
save "testa26", replace
clear

use "traina26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa26"
predict yhat, xb
rename yhat nortlm1x
save "testa26", replace
clear

* RwandaXd lpro2x

use "traina26"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa26"
predict yhat, xb
rename yhat drottmod2x
save "testa26", replace
clear

use "traina26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa26"
predict yhat, xb
rename yhat nortlm2x
save "testa26", replace
clear

* b26
* RwandaXd lpro12x

use "trainb26"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb26"
predict yhat, xb
rename yhat drottmod12x
save "testb26", replace
clear

use "trainb26"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb26"
predict yhat, xb
rename yhat nortlm12x
save "testb26", replace
clear

* RwandaXd lpro1x

use "trainb26"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb26"
predict yhat, xb
rename yhat drottmod1x
save "testb26", replace
clear

use "trainb26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb26"
predict yhat, xb
rename yhat nortlm1x
save "testb26", replace
clear

* RwandaXd lpro2x

use "trainb26"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb26"
predict yhat, xb
rename yhat drottmod2x
save "testb26", replace
clear

use "trainb26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb26"
predict yhat, xb
rename yhat nortlm2x
save "testb26", replace
clear

* c26
* RwandaXd lpro12x

use "trainc26"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc26"
predict yhat, xb
rename yhat drottmod12x
save "testc26", replace
clear

use "trainc26"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc26"
predict yhat, xb
rename yhat nortlm12x
save "testc26", replace
clear

* RwandaXd lpro1x

use "trainc26"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc26"
predict yhat, xb
rename yhat drottmod1x
save "testc26", replace
clear

use "trainc26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc26"
predict yhat, xb
rename yhat nortlm1x
save "testc26", replace
clear

* RwandaXd lpro2x

use "trainc26"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc26"
predict yhat, xb
rename yhat drottmod2x
save "testc26", replace
clear

use "trainc26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc26"
predict yhat, xb
rename yhat nortlm2x
save "testc26", replace
clear

* d26
* RwandaXd lpro12x

use "traind26"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd26"
predict yhat, xb
rename yhat drottmod12x
save "testd26", replace
clear

use "traind26"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd26"
predict yhat, xb
rename yhat nortlm12x
save "testd26", replace
clear

* RwandaXd lpro1x

use "traind26"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd26"
predict yhat, xb
rename yhat drottmod1x
save "testd26", replace
clear

use "traind26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd26"
predict yhat, xb
rename yhat nortlm1x
save "testd26", replace
clear

* RwandaXd lpro2x

use "traind26"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd26"
predict yhat, xb
rename yhat drottmod2x
save "testd26", replace
clear

use "traind26"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd26"
predict yhat, xb
rename yhat nortlm2x
save "testd26", replace
clear

* a27
* RwandaXd lpro12x

use "traina27"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa27"
predict yhat, xb
rename yhat drottmod12x
save "testa27", replace
clear

use "traina27"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa27"
predict yhat, xb
rename yhat nortlm12x
save "testa27", replace
clear

* RwandaXd lpro1x

use "traina27"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa27"
predict yhat, xb
rename yhat drottmod1x
save "testa27", replace
clear

use "traina27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa27"
predict yhat, xb
rename yhat nortlm1x
save "testa27", replace
clear

* RwandaXd lpro2x

use "traina27"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa27"
predict yhat, xb
rename yhat drottmod2x
save "testa27", replace
clear

use "traina27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa27"
predict yhat, xb
rename yhat nortlm2x
save "testa27", replace
clear

* b27
* RwandaXd lpro12x

use "trainb27"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb27"
predict yhat, xb
rename yhat drottmod12x
save "testb27", replace
clear

use "trainb27"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb27"
predict yhat, xb
rename yhat nortlm12x
save "testb27", replace
clear

* RwandaXd lpro1x

use "trainb27"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb27"
predict yhat, xb
rename yhat drottmod1x
save "testb27", replace
clear

use "trainb27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb27"
predict yhat, xb
rename yhat nortlm1x
save "testb27", replace
clear

* RwandaXd lpro2x

use "trainb27"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb27"
predict yhat, xb
rename yhat drottmod2x
save "testb27", replace
clear

use "trainb27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb27"
predict yhat, xb
rename yhat nortlm2x
save "testb27", replace
clear

* c27
* RwandaXd lpro12x

use "trainc27"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc27"
predict yhat, xb
rename yhat drottmod12x
save "testc27", replace
clear

use "trainc27"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc27"
predict yhat, xb
rename yhat nortlm12x
save "testc27", replace
clear

* RwandaXd lpro1x

use "trainc27"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc27"
predict yhat, xb
rename yhat drottmod1x
save "testc27", replace
clear

use "trainc27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc27"
predict yhat, xb
rename yhat nortlm1x
save "testc27", replace
clear

* RwandaXd lpro2x

use "trainc27"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc27"
predict yhat, xb
rename yhat drottmod2x
save "testc27", replace
clear

use "trainc27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc27"
predict yhat, xb
rename yhat nortlm2x
save "testc27", replace
clear


* d27
* RwandaXd lpro12x

use "traind27"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd27"
predict yhat, xb
rename yhat drottmod12x
save "testd27", replace
clear

use "traind27"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd27"
predict yhat, xb
rename yhat nortlm12x
save "testd27", replace
clear

* RwandaXd lpro1x

use "traind27"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd27"
predict yhat, xb
rename yhat drottmod1x
save "testd27", replace
clear

use "traind27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd27"
predict yhat, xb
rename yhat nortlm1x
save "testd27", replace
clear

* RwandaXd lpro2x

use "traind27"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd27"
predict yhat, xb
rename yhat drottmod2x
save "testd27", replace
clear

use "traind27"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd27"
predict yhat, xb
rename yhat nortlm2x
save "testd27", replace
clear

* a28
* RwandaXd lpro12x

use "traina28"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa28"
predict yhat, xb
rename yhat drottmod12x
save "testa28", replace
clear

use "traina28"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa28"
predict yhat, xb
rename yhat nortlm12x
save "testa28", replace
clear

* RwandaXd lpro1x

use "traina28"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa28"
predict yhat, xb
rename yhat drottmod1x
save "testa28", replace
clear

use "traina28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa28"
predict yhat, xb
rename yhat nortlm1x
save "testa28", replace
clear

* RwandaXd lpro2x

use "traina28"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa28"
predict yhat, xb
rename yhat drottmod2x
save "testa28", replace
clear

use "traina28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa28"
predict yhat, xb
rename yhat nortlm2x
save "testa28", replace
clear

* b28
* RwandaXd lpro12x

use "trainb28"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb28"
predict yhat, xb
rename yhat drottmod12x
save "testb28", replace
clear

use "trainb28"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb28"
predict yhat, xb
rename yhat nortlm12x
save "testb28", replace
clear

* RwandaXd lpro1x

use "trainb28"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb28"
predict yhat, xb
rename yhat drottmod1x
save "testb28", replace
clear

use "trainb28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb28"
predict yhat, xb
rename yhat nortlm1x
save "testb28", replace
clear

* RwandaXd lpro2x

use "trainb28"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb28"
predict yhat, xb
rename yhat drottmod2x
save "testb28", replace
clear

use "trainb28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb28"
predict yhat, xb
rename yhat nortlm2x
save "testb28", replace
clear

* c28
* RwandaXd lpro12x

use "trainc28"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc28"
predict yhat, xb
rename yhat drottmod12x
save "testc28", replace
clear

use "trainc28"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc28"
predict yhat, xb
rename yhat nortlm12x
save "testc28", replace
clear

* RwandaXd lpro1x

use "trainc28"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc28"
predict yhat, xb
rename yhat drottmod1x
save "testc28", replace
clear

use "trainc28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc28"
predict yhat, xb
rename yhat nortlm1x
save "testc28", replace
clear

* RwandaXd lpro2x

use "trainc28"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc28"
predict yhat, xb
rename yhat drottmod2x
save "testc28", replace
clear

use "trainc28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc28"
predict yhat, xb
rename yhat nortlm2x
save "testc28", replace
clear

* d28
* RwandaXd lpro12x

use "traind28"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd28"
predict yhat, xb
rename yhat drottmod12x
save "testd28", replace
clear

use "traind28"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd28"
predict yhat, xb
rename yhat nortlm12x
save "testd28", replace
clear

* RwandaXd lpro1x

use "traind28"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd28"
predict yhat, xb
rename yhat drottmod1x
save "testd28", replace
clear

use "traind28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd28"
predict yhat, xb
rename yhat nortlm1x
save "testd28", replace
clear

* RwandaXd lpro2x

use "traind28"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd28"
predict yhat, xb
rename yhat drottmod2x
save "testd28", replace
clear

use "traind28"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd28"
predict yhat, xb
rename yhat nortlm2x
save "testd28", replace
clear

* a29
* RwandaXd lpro12x

use "traina29"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa29"
predict yhat, xb
rename yhat drottmod12x
save "testa29", replace
clear

use "traina29"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa29"
predict yhat, xb
rename yhat nortlm12x
save "testa29", replace
clear

* RwandaXd lpro1x

use "traina29"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa29"
predict yhat, xb
rename yhat drottmod1x
save "testa29", replace
clear

use "traina29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa29"
predict yhat, xb
rename yhat nortlm1x
save "testa29", replace
clear

* RwandaXd lpro2x

use "traina29"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa29"
predict yhat, xb
rename yhat drottmod2x
save "testa29", replace
clear

use "traina29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa29"
predict yhat, xb
rename yhat nortlm2x
save "testa29", replace
clear

* b29
* RwandaXd lpro12x

use "trainb29"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb29"
predict yhat, xb
rename yhat drottmod12x
save "testb29", replace
clear

use "trainb29"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb29"
predict yhat, xb
rename yhat nortlm12x
save "testb29", replace
clear

* RwandaXd lpro1x

use "trainb29"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb29"
predict yhat, xb
rename yhat drottmod1x
save "testb29", replace
clear

use "trainb29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb29"
predict yhat, xb
rename yhat nortlm1x
save "testb29", replace
clear

* RwandaXd lpro2x

use "trainb29"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb29"
predict yhat, xb
rename yhat drottmod2x
save "testb29", replace
clear

use "trainb29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb29"
predict yhat, xb
rename yhat nortlm2x
save "testb29", replace
clear

* c29
* RwandaXd lpro12x

use "trainc29"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc29"
predict yhat, xb
rename yhat drottmod12x
save "testc29", replace
clear

use "trainc29"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc29"
predict yhat, xb
rename yhat nortlm12x
save "testc29", replace
clear

* RwandaXd lpro1x

use "trainc29"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc29"
predict yhat, xb
rename yhat drottmod1x
save "testc29", replace
clear

use "trainc29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc29"
predict yhat, xb
rename yhat nortlm1x
save "testc29", replace
clear

* RwandaXd lpro2x

use "trainc29"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc29"
predict yhat, xb
rename yhat drottmod2x
save "testc29", replace
clear

use "trainc29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc29"
predict yhat, xb
rename yhat nortlm2x
save "testc29", replace
clear

* d29
* RwandaXd lpro12x

use "traind29"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd29"
predict yhat, xb
rename yhat drottmod12x
save "testd29", replace
clear

use "traind29"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd29"
predict yhat, xb
rename yhat nortlm12x
save "testd29", replace
clear

* RwandaXd lpro1x

use "traind29"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd29"
predict yhat, xb
rename yhat drottmod1x
save "testd29", replace
clear

use "traind29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd29"
predict yhat, xb
rename yhat nortlm1x
save "testd29", replace
clear

* RwandaXd lpro2x

use "traind29"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd29"
predict yhat, xb
rename yhat drottmod2x
save "testd29", replace
clear

use "traind29"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd29"
predict yhat, xb
rename yhat nortlm2x
save "testd29", replace
clear


* a30
* RwandaXd lpro12x

use "traina30"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa30"
predict yhat, xb
rename yhat drottmod12x
save "testa30", replace
clear

use "traina30"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa30"
predict yhat, xb
rename yhat nortlm12x
save "testa30", replace
clear

* RwandaXd lpro1x

use "traina30"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa30"
predict yhat, xb
rename yhat drottmod1x
save "testa30", replace
clear

use "traina30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa30"
predict yhat, xb
rename yhat nortlm1x
save "testa30", replace
clear

* RwandaXd lpro2x

use "traina30"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa30"
predict yhat, xb
rename yhat drottmod2x
save "testa30", replace
clear

use "traina30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa30"
predict yhat, xb
rename yhat nortlm2x
save "testa30", replace
clear

* b30
* RwandaXd lpro12x

use "trainb30"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb30"
predict yhat, xb
rename yhat drottmod12x
save "testb30", replace
clear

use "trainb30"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb30"
predict yhat, xb
rename yhat nortlm12x
save "testb30", replace
clear

* RwandaXd lpro1x

use "trainb30"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb30"
predict yhat, xb
rename yhat drottmod1x
save "testb30", replace
clear

use "trainb30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb30"
predict yhat, xb
rename yhat nortlm1x
save "testb30", replace
clear

* RwandaXd lpro2x

use "trainb30"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb30"
predict yhat, xb
rename yhat drottmod2x
save "testb30", replace
clear

use "trainb30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb30"
predict yhat, xb
rename yhat nortlm2x
save "testb30", replace
clear

* c30
* RwandaXd lpro12x

use "trainc30"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc30"
predict yhat, xb
rename yhat drottmod12x
save "testc30", replace
clear

use "trainc30"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc30"
predict yhat, xb
rename yhat nortlm12x
save "testc30", replace
clear

* RwandaXd lpro1x
use "trainc30"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc30"
predict yhat, xb
rename yhat drottmod1x
save "testc30", replace
clear

use "trainc30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc30"
predict yhat, xb
rename yhat nortlm1x
save "testc30", replace
clear

* RwandaXd lpro2x

use "trainc30"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc30"
predict yhat, xb
rename yhat drottmod2x
save "testc30", replace
clear

use "trainc30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc30"
predict yhat, xb
rename yhat nortlm2x
save "testc30", replace
clear


* d30
* RwandaXd lpro12x

use "traind30"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd30"
predict yhat, xb
rename yhat drottmod12x
save "testd30", replace
clear

use "traind30"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd30"
predict yhat, xb
rename yhat nortlm12x
save "testd30", replace
clear

* RwandaXd lpro1x

use "traind30"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd30"
predict yhat, xb
rename yhat drottmod1x
save "testd30", replace
clear

use "traind30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd30"
predict yhat, xb
rename yhat nortlm1x
save "testd30", replace
clear

* RwandaXd lpro2x

use "traind30"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd30"
predict yhat, xb
rename yhat drottmod2x
save "testd30", replace
clear

use "traind30"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd30"
predict yhat, xb
rename yhat nortlm2x
save "testd30", replace
clear



* a31
* RwandaXd lpro12x

use "traina31"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa31"
predict yhat, xb
rename yhat drottmod12x
save "testa31", replace
clear

use "traina31"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa31"
predict yhat, xb
rename yhat nortlm12x
save "testa31", replace
clear

* RwandaXd lpro1x

use "traina31"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa31"
predict yhat, xb
rename yhat drottmod1x
save "testa31", replace
clear

use "traina31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa31"
predict yhat, xb
rename yhat nortlm1x
save "testa31", replace
clear

* RwandaXd lpro2x

use "traina31"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa31"
predict yhat, xb
rename yhat drottmod2x
save "testa31", replace
clear

use "traina31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa31"
predict yhat, xb
rename yhat nortlm2x
save "testa31", replace
clear

* b31
* RwandaXd lpro12x

use "trainb31"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb31"
predict yhat, xb
rename yhat drottmod12x
save "testb31", replace
clear

use "trainb31"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb31"
predict yhat, xb
rename yhat nortlm12x
save "testb31", replace
clear

* RwandaXd lpro1x

use "trainb31"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb31"
predict yhat, xb
rename yhat drottmod1x
save "testb31", replace
clear

use "trainb31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb31"
predict yhat, xb
rename yhat nortlm1x
save "testb31", replace
clear

* RwandaXd lpro2x

use "trainb31"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb31"
predict yhat, xb
rename yhat drottmod2x
save "testb31", replace
clear

use "trainb31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb31"
predict yhat, xb
rename yhat nortlm2x
save "testb31", replace
clear

* c31
* RwandaXd lpro12x

use "trainc31"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc31"
predict yhat, xb
rename yhat drottmod12x
save "testc31", replace
clear

use "trainc31"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc31"
predict yhat, xb
rename yhat nortlm12x
save "testc31", replace
clear

* RwandaXd lpro1x

use "trainc31"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc31"
predict yhat, xb
rename yhat drottmod1x
save "testc31", replace
clear

use "trainc31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc31"
predict yhat, xb
rename yhat nortlm1x
save "testc31", replace
clear

* RwandaXd lpro2x

use "trainc31"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc31"
predict yhat, xb
rename yhat drottmod2x
save "testc31", replace
clear

use "trainc31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc31"
predict yhat, xb
rename yhat nortlm2x
save "testc31", replace
clear


* d31
* RwandaXd lpro12x

use "traind31"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd31"
predict yhat, xb
rename yhat drottmod12x
save "testd31", replace
clear

use "traind31"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd31"
predict yhat, xb
rename yhat nortlm12x
save "testd31", replace
clear

* RwandaXd lpro1x

use "traind31"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd31"
predict yhat, xb
rename yhat drottmod1x
save "testd31", replace
clear

use "traind31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd31"
predict yhat, xb
rename yhat nortlm1x
save "testd31", replace
clear

* RwandaXd lpro2x

use "traind31"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd31"
predict yhat, xb
rename yhat drottmod2x
save "testd31", replace
clear

use "traind31"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd31"
predict yhat, xb
rename yhat nortlm2x
save "testd31", replace
clear

* a32
* RwandaXd lpro12x

use "traina32"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa32"
predict yhat, xb
rename yhat drottmod12x
save "testa32", replace
clear

use "traina32"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa32"
predict yhat, xb
rename yhat nortlm12x
save "testa32", replace
clear

* RwandaXd lpro1x

use "traina32"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa32"
predict yhat, xb
rename yhat drottmod1x
save "testa32", replace
clear

use "traina32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa32"
predict yhat, xb
rename yhat nortlm1x
save "testa32", replace
clear

* RwandaXd lpro2x

use "traina32"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa32"
predict yhat, xb
rename yhat drottmod2x
save "testa32", replace
clear

use "traina32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa32"
predict yhat, xb
rename yhat nortlm2x
save "testa32", replace
clear

* b32
* RwandaXd lpro12x

use "trainb32"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb32"
predict yhat, xb
rename yhat drottmod12x
save "testb32", replace
clear

use "trainb32"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb32"
predict yhat, xb
rename yhat nortlm12x
save "testb32", replace
clear

* RwandaXd lpro1x

use "trainb32"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb32"
predict yhat, xb
rename yhat drottmod1x
save "testb32", replace
clear

use "trainb32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb32"
predict yhat, xb
rename yhat nortlm1x
save "testb32", replace
clear

* RwandaXd lpro2x

use "trainb32"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb32"
predict yhat, xb
rename yhat drottmod2x
save "testb32", replace
clear

use "trainb32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb32"
predict yhat, xb
rename yhat nortlm2x
save "testb32", replace
clear

* c32
* RwandaXd lpro12x

use "trainc32"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc32"
predict yhat, xb
rename yhat drottmod12x
save "testc32", replace
clear

use "trainc32"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc32"
predict yhat, xb
rename yhat nortlm12x
save "testc32", replace
clear

* RwandaXd lpro1x

use "trainc32"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc32"
predict yhat, xb
rename yhat drottmod1x
save "testc32", replace
clear

use "trainc32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc32"
predict yhat, xb
rename yhat nortlm1x
save "testc32", replace
clear

* RwandaXd lpro2x

use "trainc32"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc32"
predict yhat, xb
rename yhat drottmod2x
save "testc32", replace
clear

use "trainc32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc32"
predict yhat, xb
rename yhat nortlm2x
save "testc32", replace
clear

* d32
* RwandaXd lpro12x

use "traind32"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd32"
predict yhat, xb
rename yhat drottmod12x
save "testd32", replace
clear

use "traind32"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd32"
predict yhat, xb
rename yhat nortlm12x
save "testd32", replace
clear

* RwandaXd lpro1x

use "traind32"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd32"
predict yhat, xb
rename yhat drottmod1x
save "testd32", replace
clear

use "traind32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd32"
predict yhat, xb
rename yhat nortlm1x
save "testd32", replace
clear

* RwandaXd lpro2x

use "traind32"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd32"
predict yhat, xb
rename yhat drottmod2x
save "testd32", replace
clear

use "traind32"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd32"
predict yhat, xb
rename yhat nortlm2x
save "testd32", replace
clear

* a33

* RwandaXd lpro12x

use "traina33"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa33"
predict yhat, xb
rename yhat drottmod12x
save "testa33", replace
clear

use "traina33"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa33"
predict yhat, xb
rename yhat nortlm12x
save "testa33", replace
clear

* RwandaXd lpro1x

use "traina33"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa33"
predict yhat, xb
rename yhat drottmod1x
save "testa33", replace
clear

use "traina33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa33"
predict yhat, xb
rename yhat nortlm1x
save "testa33", replace
clear

* RwandaXd lpro2x

use "traina33"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa33"
predict yhat, xb
rename yhat drottmod2x
save "testa33", replace
clear

use "traina33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa33"
predict yhat, xb
rename yhat nortlm2x
save "testa33", replace
clear

* b33
* RwandaXd lpro12x

use "trainb33"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb33"
predict yhat, xb
rename yhat drottmod12x
save "testb33", replace
clear

use "trainb33"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb33"
predict yhat, xb
rename yhat nortlm12x
save "testb33", replace
clear

* RwandaXd lpro1x

use "trainb33"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb33"
predict yhat, xb
rename yhat drottmod1x
save "testb33", replace
clear

use "trainb33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb33"
predict yhat, xb
rename yhat nortlm1x
save "testb33", replace
clear

* RwandaXd lpro2x

use "trainb33"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb33"
predict yhat, xb
rename yhat drottmod2x
save "testb33", replace
clear

use "trainb33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb33"
predict yhat, xb
rename yhat nortlm2x
save "testb33", replace
clear

* c33
* RwandaXd lpro12x

use "trainc33"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc33"
predict yhat, xb
rename yhat drottmod12x
save "testc33", replace
clear

use "trainc33"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc33"
predict yhat, xb
rename yhat nortlm12x
save "testc33", replace
clear

* RwandaXd lpro1x

use "trainc33"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc33"
predict yhat, xb
rename yhat drottmod1x
save "testc33", replace
clear

use "trainc33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc33"
predict yhat, xb
rename yhat nortlm1x
save "testc33", replace
clear

* RwandaXd lpro2x

use "trainc33"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc33"
predict yhat, xb
rename yhat drottmod2x
save "testc33", replace
clear

use "trainc33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc33"
predict yhat, xb
rename yhat nortlm2x
save "testc33", replace
clear

* d33
* RwandaXd lpro12x

use "traind33"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd33"
predict yhat, xb
rename yhat drottmod12x
save "testd33", replace
clear

use "traind33"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd33"
predict yhat, xb
rename yhat nortlm12x
save "testd33", replace
clear

* RwandaXd lpro1x

use "traind33"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd33"
predict yhat, xb
rename yhat drottmod1x
save "testd33", replace
clear

use "traind33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd33"
predict yhat, xb
rename yhat nortlm1x
save "testd33", replace
clear

* RwandaXd lpro2x

use "traind33"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd33"
predict yhat, xb
rename yhat drottmod2x
save "testd33", replace
clear

use "traind33"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd33"
predict yhat, xb
rename yhat nortlm2x
save "testd33", replace
clear


* a34
* RwandaXd lpro12x

use "traina34"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa34"
predict yhat, xb
rename yhat drottmod12x
save "testa34", replace
clear

use "traina34"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa34"
predict yhat, xb
rename yhat nortlm12x
save "testa34", replace
clear

* RwandaXd lpro1x

use "traina34"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa34"
predict yhat, xb
rename yhat drottmod1x
save "testa34", replace
clear

use "traina34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa34"
predict yhat, xb
rename yhat nortlm1x
save "testa34", replace
clear

* RwandaXd lpro2x

use "traina34"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa34"
predict yhat, xb
rename yhat drottmod2x
save "testa34", replace
clear

use "traina34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa34"
predict yhat, xb
rename yhat nortlm2x
save "testa34", replace
clear

* b34
* RwandaXd lpro12x

use "trainb34"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb34"
predict yhat, xb
rename yhat drottmod12x
save "testb34", replace
clear

use "trainb34"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb34"
predict yhat, xb
rename yhat nortlm12x
save "testb34", replace
clear

* RwandaXd lpro1x

use "trainb34"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb34"
predict yhat, xb
rename yhat drottmod1x
save "testb34", replace
clear

use "trainb34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb34"
predict yhat, xb
rename yhat nortlm1x
save "testb34", replace
clear

* RwandaXd lpro2x

use "trainb34"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb34"
predict yhat, xb
rename yhat drottmod2x
save "testb34", replace
clear

use "trainb34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb34"
predict yhat, xb
rename yhat nortlm2x
save "testb34", replace
clear

* c34
* RwandaXd lpro12x

use "trainc34"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc34"
predict yhat, xb
rename yhat drottmod12x
save "testc34", replace
clear

use "trainc34"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc34"
predict yhat, xb
rename yhat nortlm12x
save "testc34", replace
clear

* RwandaXd lpro1x

use "trainc34"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc34"
predict yhat, xb
rename yhat drottmod1x
save "testc34", replace
clear

use "trainc34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc34"
predict yhat, xb
rename yhat nortlm1x
save "testc34", replace
clear

* RwandaXd lpro2x

use "trainc34"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc34"
predict yhat, xb
rename yhat drottmod2x
save "testc34", replace
clear

use "trainc34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc34"
predict yhat, xb
rename yhat nortlm2x
save "testc34", replace
clear


* d34
* RwandaXd lpro12x

use "traind34"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd34"
predict yhat, xb
rename yhat drottmod12x
save "testd34", replace
clear

use "traind34"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd34"
predict yhat, xb
rename yhat nortlm12x
save "testd34", replace
clear

* RwandaXd lpro1x

use "traind34"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd34"
predict yhat, xb
rename yhat drottmod1x
save "testd34", replace
clear

use "traind34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd34"
predict yhat, xb
rename yhat nortlm1x
save "testd34", replace
clear

* RwandaXd lpro2x

use "traind34"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd34"
predict yhat, xb
rename yhat drottmod2x
save "testd34", replace
clear

use "traind34"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd34"
predict yhat, xb
rename yhat nortlm2x
save "testd34", replace
clear

* a35
* RwandaXd lpro12x

use "traina35"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa35"
predict yhat, xb
rename yhat drottmod12x
save "testa35", replace
clear

use "traina35"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa35"
predict yhat, xb
rename yhat nortlm12x
save "testa35", replace
clear

* RwandaXd lpro1x

use "traina35"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa35"
predict yhat, xb
rename yhat drottmod1x
save "testa35", replace
clear

use "traina35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa35"
predict yhat, xb
rename yhat nortlm1x
save "testa35", replace
clear

* RwandaXd lpro2x

use "traina35"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa35"
predict yhat, xb
rename yhat drottmod2x
save "testa35", replace
clear

use "traina35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa35"
predict yhat, xb
rename yhat nortlm2x
save "testa35", replace
clear

* b35
* RwandaXd lpro12x

use "trainb35"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb35"
predict yhat, xb
rename yhat drottmod12x
save "testb35", replace
clear

use "trainb35"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb35"
predict yhat, xb
rename yhat nortlm12x
save "testb35", replace
clear

* RwandaXd lpro1x

use "trainb35"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb35"
predict yhat, xb
rename yhat drottmod1x
save "testb35", replace
clear

use "trainb35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb35"
predict yhat, xb
rename yhat nortlm1x
save "testb35", replace
clear

* RwandaXd lpro2x

use "trainb35"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb35"
predict yhat, xb
rename yhat drottmod2x
save "testb35", replace

clear
use "trainb35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb35"
predict yhat, xb
rename yhat nortlm2x
save "testb35", replace
clear

* c35
* RwandaXd lpro12x

use "trainc35"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc35"
predict yhat, xb
rename yhat drottmod12x
save "testc35", replace
clear

use "trainc35"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc35"
predict yhat, xb
rename yhat nortlm12x
save "testc35", replace
clear

* RwandaXd lpro1x

use "trainc35"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc35"
predict yhat, xb
rename yhat drottmod1x
save "testc35", replace
clear

use "trainc35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc35"
predict yhat, xb
rename yhat nortlm1x
save "testc35", replace
clear

* RwandaXd lpro2x

use "trainc35"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc35"
predict yhat, xb
rename yhat drottmod2x
save "testc35", replace
clear

use "trainc35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc35"
predict yhat, xb
rename yhat nortlm2x
save "testc35", replace
clear

* d35
* RwandaXd lpro12x

use "traind35"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd35"
predict yhat, xb
rename yhat drottmod12x
save "testd35", replace
clear

use "traind35"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd35"
predict yhat, xb
rename yhat nortlm12x
save "testd35", replace
clear

* RwandaXd lpro1x

use "traind35"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd35"
predict yhat, xb
rename yhat drottmod1x
save "testd35", replace
clear

use "traind35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd35"
predict yhat, xb
rename yhat nortlm1x
save "testd35", replace
clear

* RwandaXd lpro2x

use "traind35"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd35"
predict yhat, xb
rename yhat drottmod2x
save "testd35", replace
clear

use "traind35"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd35"
predict yhat, xb
rename yhat nortlm2x
save "testd35", replace
clear

* a36
* RwandaXd lpro12x

use "traina36"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa36"
predict yhat, xb
rename yhat drottmod12x
save "testa36", replace
clear

use "traina36"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa36"
predict yhat, xb
rename yhat nortlm12x
save "testa36", replace
clear

* RwandaXd lpro1x

use "traina36"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa36"
predict yhat, xb
rename yhat drottmod1x
save "testa36", replace
clear

use "traina36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa36"
predict yhat, xb
rename yhat nortlm1x
save "testa36", replace
clear

* RwandaXd lpro2x

use "traina36"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa36"
predict yhat, xb
rename yhat drottmod2x
save "testa36", replace
clear

use "traina36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa36"
predict yhat, xb
rename yhat nortlm2x
save "testa36", replace
clear

* b36
* RwandaXd lpro12x

use "trainb36"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb36"
predict yhat, xb
rename yhat drottmod12x
save "testb36", replace
clear

use "trainb36"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb36"
predict yhat, xb
rename yhat nortlm12x
save "testb36", replace
clear

* RwandaXd lpro1x

use "trainb36"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb36"
predict yhat, xb
rename yhat drottmod1x
save "testb36", replace
clear

use "trainb36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb36"
predict yhat, xb
rename yhat nortlm1x
save "testb36", replace
clear

* RwandaXd lpro2x

use "trainb36"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb36"
predict yhat, xb
rename yhat drottmod2x
save "testb36", replace
clear

use "trainb36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb36"
predict yhat, xb
rename yhat nortlm2x
save "testb36", replace
clear

* c36
* RwandaXd lpro12x

use "trainc36"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc36"
predict yhat, xb
rename yhat drottmod12x
save "testc36", replace
clear

use "trainc36"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc36"
predict yhat, xb
rename yhat nortlm12x
save "testc36", replace
clear

* RwandaXd lpro1x

use "trainc36"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc36"
predict yhat, xb
rename yhat drottmod1x
save "testc36", replace
clear

use "trainc36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc36"
predict yhat, xb
rename yhat nortlm1x
save "testc36", replace
clear

* RwandaXd lpro2x

use "trainc36"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc36"
predict yhat, xb
rename yhat drottmod2x
save "testc36", replace
clear

use "trainc36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc36"
predict yhat, xb
rename yhat nortlm2x
save "testc36", replace
clear

* d36
* RwandaXd lpro12x

use "traind36"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd36"
predict yhat, xb
rename yhat drottmod12x
save "testd36", replace
clear

use "traind36"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd36"
predict yhat, xb
rename yhat nortlm12x
save "testd36", replace
clear

* RwandaXd lpro1x

use "traind36"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd36"
predict yhat, xb
rename yhat drottmod1x
save "testd36", replace
clear

use "traind36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd36"
predict yhat, xb
rename yhat nortlm1x
save "testd36", replace
clear

* RwandaXd lpro2x

use "traind36"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd36"
predict yhat, xb
rename yhat drottmod2x
save "testd36", replace
clear

use "traind36"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd36"
predict yhat, xb
rename yhat nortlm2x
save "testd36", replace
clear

* a37
* RwandaXd lpro12x

use "traina37"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa37"
predict yhat, xb
rename yhat drottmod12x
save "testa37", replace
clear

use "traina37"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa37"
predict yhat, xb
rename yhat nortlm12x
save "testa37", replace
clear

* RwandaXd lpro1x

use "traina37"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa37"
predict yhat, xb
rename yhat drottmod1x
save "testa37", replace
clear

use "traina37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa37"
predict yhat, xb
rename yhat nortlm1x
save "testa37", replace
clear

* RwandaXd lpro2x

use "traina37"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa37"
predict yhat, xb
rename yhat drottmod2x
save "testa37", replace
clear

use "traina37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa37"
predict yhat, xb
rename yhat nortlm2x
save "testa37", replace
clear

* b37
* RwandaXd lpro12x

use "trainb37"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb37"
predict yhat, xb
rename yhat drottmod12x
save "testb37", replace
clear

use "trainb37"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb37"
predict yhat, xb
rename yhat nortlm12x
save "testb37", replace
clear

* RwandaXd lpro1x

use "trainb37"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb37"
predict yhat, xb
rename yhat drottmod1x
save "testb37", replace
clear

use "trainb37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb37"
predict yhat, xb
rename yhat nortlm1x
save "testb37", replace
clear

* RwandaXd lpro2x

use "trainb37"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb37"
predict yhat, xb
rename yhat drottmod2x
save "testb37", replace
clear

use "trainb37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb37"
predict yhat, xb
rename yhat nortlm2x
save "testb37", replace
clear

* c37
* RwandaXd lpro12x

use "trainc37"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc37"
predict yhat, xb
rename yhat drottmod12x
save "testc37", replace
clear

use "trainc37"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc37"
predict yhat, xb
rename yhat nortlm12x
save "testc37", replace
clear

* RwandaXd lpro1x

use "trainc37"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc37"
predict yhat, xb
rename yhat drottmod1x
save "testc37", replace
clear

use "trainc37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc37"
predict yhat, xb
rename yhat nortlm1x
save "testc37", replace
clear

* RwandaXd lpro2x

use "trainc37"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc37"
predict yhat, xb
rename yhat drottmod2x
save "testc37", replace
clear

use "trainc37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc37"
predict yhat, xb
rename yhat nortlm2x
save "testc37", replace
clear


* d37
* RwandaXd lpro12x

use "traind37"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd37"
predict yhat, xb
rename yhat drottmod12x
save "testd37", replace
clear

use "traind37"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd37"
predict yhat, xb
rename yhat nortlm12x
save "testd37", replace
clear

* RwandaXd lpro1x

use "traind37"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd37"
predict yhat, xb
rename yhat drottmod1x
save "testd37", replace
clear

use "traind37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd37"
predict yhat, xb
rename yhat nortlm1x
save "testd37", replace
clear

* RwandaXd lpro2x

use "traind37"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd37"
predict yhat, xb
rename yhat drottmod2x
save "testd37", replace
clear

use "traind37"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd37"
predict yhat, xb
rename yhat nortlm2x
save "testd37", replace
clear

* a38
* RwandaXd lpro12x

use "traina38"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa38"
predict yhat, xb
rename yhat drottmod12x
save "testa38", replace
clear

use "traina38"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa38"
predict yhat, xb
rename yhat nortlm12x
save "testa38", replace
clear

* RwandaXd lpro1x

use "traina38"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa38"
predict yhat, xb
rename yhat drottmod1x
save "testa38", replace
clear

use "traina38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa38"
predict yhat, xb
rename yhat nortlm1x
save "testa38", replace
clear

* RwandaXd lpro2x

use "traina38"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa38"
predict yhat, xb
rename yhat drottmod2x
save "testa38", replace
clear

use "traina38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa38"
predict yhat, xb
rename yhat nortlm2x
save "testa38", replace
clear

* b38
* RwandaXd lpro12x

use "trainb38"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb38"
predict yhat, xb
rename yhat drottmod12x
save "testb38", replace
clear

use "trainb38"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb38"
predict yhat, xb
rename yhat nortlm12x
save "testb38", replace
clear

* RwandaXd lpro1x

use "trainb38"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb38"
predict yhat, xb
rename yhat drottmod1x
save "testb38", replace
clear

use "trainb38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb38"
predict yhat, xb
rename yhat nortlm1x
save "testb38", replace
clear

* RwandaXd lpro2x

use "trainb38"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb38"
predict yhat, xb
rename yhat drottmod2x
save "testb38", replace
clear

use "trainb38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb38"
predict yhat, xb
rename yhat nortlm2x
save "testb38", replace
clear

* c38
* RwandaXd lpro12x

use "trainc38"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc38"
predict yhat, xb
rename yhat drottmod12x
save "testc38", replace
clear

use "trainc38"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc38"
predict yhat, xb
rename yhat nortlm12x
save "testc38", replace
clear

* RwandaXd lpro1x

use "trainc38"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc38"
predict yhat, xb
rename yhat drottmod1x
save "testc38", replace
clear

use "trainc38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc38"
predict yhat, xb
rename yhat nortlm1x
save "testc38", replace
clear

* RwandaXd lpro2x

use "trainc38"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc38"
predict yhat, xb
rename yhat drottmod2x
save "testc38", replace
clear

use "trainc38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc38"
predict yhat, xb
rename yhat nortlm2x
save "testc38", replace
clear

* d38
* RwandaXd lpro12x

use "traind38"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd38"
predict yhat, xb
rename yhat drottmod12x
save "testd38", replace
clear

use "traind38"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd38"
predict yhat, xb
rename yhat nortlm12x
save "testd38", replace
clear

* RwandaXd lpro1x

use "traind38"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd38"
predict yhat, xb
rename yhat drottmod1x
save "testd38", replace
clear

use "traind38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd38"
predict yhat, xb
rename yhat nortlm1x
save "testd38", replace
clear

* RwandaXd lpro2x

use "traind38"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd38"
predict yhat, xb
rename yhat drottmod2x
save "testd38", replace
clear

use "traind38"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd38"
predict yhat, xb
rename yhat nortlm2x
save "testd38", replace
clear

* a39
* RwandaXd lpro12x

use "traina39"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa39"
predict yhat, xb
rename yhat drottmod12x
save "testa39", replace
clear

use "traina39"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa39"
predict yhat, xb
rename yhat nortlm12x
save "testa39", replace
clear

* RwandaXd lpro1x

use "traina39"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa39"
predict yhat, xb
rename yhat drottmod1x
save "testa39", replace
clear

use "traina39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa39"
predict yhat, xb
rename yhat nortlm1x
save "testa39", replace
clear

* RwandaXd lpro2x

use "traina39"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa39"
predict yhat, xb
rename yhat drottmod2x
save "testa39", replace
clear

use "traina39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa39"
predict yhat, xb
rename yhat nortlm2x
save "testa39", replace
clear

* b39
* RwandaXd lpro12x

use "trainb39"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb39"
predict yhat, xb
rename yhat drottmod12x
save "testb39", replace
clear

use "trainb39"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb39"
predict yhat, xb
rename yhat nortlm12x
save "testb39", replace
clear

* RwandaXd lpro1x

use "trainb39"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb39"
predict yhat, xb
rename yhat drottmod1x
save "testb39", replace
clear

use "trainb39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb39"
predict yhat, xb
rename yhat nortlm1x
save "testb39", replace
clear

* RwandaXd lpro2x

use "trainb39"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb39"
predict yhat, xb
rename yhat drottmod2x
save "testb39", replace
clear

use "trainb39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb39"
predict yhat, xb
rename yhat nortlm2x
save "testb39", replace
clear

* c39
* RwandaXd lpro12x

use "trainc39"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc39"
predict yhat, xb
rename yhat drottmod12x
save "testc39", replace
clear

use "trainc39"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc39"
predict yhat, xb
rename yhat nortlm12x
save "testc39", replace
clear

* RwandaXd lpro1x

use "trainc39"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc39"
predict yhat, xb
rename yhat drottmod1x
save "testc39", replace
clear

use "trainc39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc39"
predict yhat, xb
rename yhat nortlm1x
save "testc39", replace
clear

* RwandaXd lpro2x

use "trainc39"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc39"
predict yhat, xb
rename yhat drottmod2x
save "testc39", replace
clear

use "trainc39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc39"
predict yhat, xb
rename yhat nortlm2x
save "testc39", replace
clear

* d39
* RwandaXd lpro12x

use "traind39"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd39"
predict yhat, xb
rename yhat drottmod12x
save "testd39", replace
clear

use "traind39"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd39"
predict yhat, xb
rename yhat nortlm12x
save "testd39", replace
clear

* RwandaXd lpro1x

use "traind39"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd39"
predict yhat, xb
rename yhat drottmod1x
save "testd39", replace
clear

use "traind39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd39"
predict yhat, xb
rename yhat nortlm1x
save "testd39", replace
clear

* RwandaXd lpro2x

use "traind39"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd39"
predict yhat, xb
rename yhat drottmod2x
save "testd39", replace
clear

use "traind39"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd39"
predict yhat, xb
rename yhat nortlm2x
save "testd39", replace
clear


* a40
* RwandaXd lpro12x

use "traina40"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa40"
predict yhat, xb
rename yhat drottmod12x
save "testa40", replace
clear

use "traina40"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa40"
predict yhat, xb
rename yhat nortlm12x
save "testa40", replace
clear

* RwandaXd lpro1x

use "traina40"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa40"
predict yhat, xb
rename yhat drottmod1x
save "testa40", replace
clear

use "traina40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa40"
predict yhat, xb
rename yhat nortlm1x
save "testa40", replace
clear

* RwandaXd lpro2x

use "traina40"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa40"
predict yhat, xb
rename yhat drottmod2x
save "testa40", replace
clear

use "traina40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa40"
predict yhat, xb
rename yhat nortlm2x
save "testa40", replace
clear

* b40
* RwandaXd lpro12x

use "trainb40"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb40"
predict yhat, xb
rename yhat drottmod12x
save "testb40", replace
clear

use "trainb40"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb40"
predict yhat, xb
rename yhat nortlm12x
save "testb40", replace
clear

* RwandaXd lpro1x

use "trainb40"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb40"
predict yhat, xb
rename yhat drottmod1x
save "testb40", replace
clear

use "trainb40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb40"
predict yhat, xb
rename yhat nortlm1x
save "testb40", replace
clear

* RwandaXd lpro2x

use "trainb40"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb40"
predict yhat, xb
rename yhat drottmod2x
save "testb40", replace
clear

use "trainb40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb40"
predict yhat, xb
rename yhat nortlm2x
save "testb40", replace
clear

* c40
* RwandaXd lpro12x

use "trainc40"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc40"
predict yhat, xb
rename yhat drottmod12x
save "testc40", replace
clear

use "trainc40"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc40"
predict yhat, xb
rename yhat nortlm12x
save "testc40", replace
clear

* RwandaXd lpro1x
use "trainc40"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc40"
predict yhat, xb
rename yhat drottmod1x
save "testc40", replace
clear

use "trainc40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc40"
predict yhat, xb
rename yhat nortlm1x
save "testc40", replace
clear

* RwandaXd lpro2x

use "trainc40"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc40"
predict yhat, xb
rename yhat drottmod2x
save "testc40", replace
clear

use "trainc40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc40"
predict yhat, xb
rename yhat nortlm2x
save "testc40", replace
clear


* d40
* RwandaXd lpro12x

use "traind40"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd40"
predict yhat, xb
rename yhat drottmod12x
save "testd40", replace
clear

use "traind40"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd40"
predict yhat, xb
rename yhat nortlm12x
save "testd40", replace
clear

* RwandaXd lpro1x

use "traind40"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd40"
predict yhat, xb
rename yhat drottmod1x
save "testd40", replace
clear

use "traind40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd40"
predict yhat, xb
rename yhat nortlm1x
save "testd40", replace
clear

* RwandaXd lpro2x

use "traind40"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd40"
predict yhat, xb
rename yhat drottmod2x
save "testd40", replace
clear

use "traind40"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd40"
predict yhat, xb
rename yhat nortlm2x
save "testd40", replace
clear


* a41
* RwandaXd lpro12x

use "traina41"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa41"
predict yhat, xb
rename yhat drottmod12x
save "testa41", replace
clear

use "traina41"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa41"
predict yhat, xb
rename yhat nortlm12x
save "testa41", replace
clear

* RwandaXd lpro1x

use "traina41"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa41"
predict yhat, xb
rename yhat drottmod1x
save "testa41", replace
clear

use "traina41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa41"
predict yhat, xb
rename yhat nortlm1x
save "testa41", replace
clear

* RwandaXd lpro2x

use "traina41"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa41"
predict yhat, xb
rename yhat drottmod2x
save "testa41", replace
clear

use "traina41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa41"
predict yhat, xb
rename yhat nortlm2x
save "testa41", replace
clear

* b41
* RwandaXd lpro12x

use "trainb41"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb41"
predict yhat, xb
rename yhat drottmod12x
save "testb41", replace
clear

use "trainb41"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb41"
predict yhat, xb
rename yhat nortlm12x
save "testb41", replace
clear

* RwandaXd lpro1x

use "trainb41"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb41"
predict yhat, xb
rename yhat drottmod1x
save "testb41", replace
clear

use "trainb41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb41"
predict yhat, xb
rename yhat nortlm1x
save "testb41", replace
clear

* RwandaXd lpro2x

use "trainb41"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb41"
predict yhat, xb
rename yhat drottmod2x
save "testb41", replace
clear

use "trainb41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb41"
predict yhat, xb
rename yhat nortlm2x
save "testb41", replace
clear

* c41
* RwandaXd lpro12x

use "trainc41"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc41"
predict yhat, xb
rename yhat drottmod12x
save "testc41", replace
clear

use "trainc41"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc41"
predict yhat, xb
rename yhat nortlm12x
save "testc41", replace
clear

* RwandaXd lpro1x

use "trainc41"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc41"
predict yhat, xb
rename yhat drottmod1x
save "testc41", replace
clear

use "trainc41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc41"
predict yhat, xb
rename yhat nortlm1x
save "testc41", replace
clear

* RwandaXd lpro2x

use "trainc41"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc41"
predict yhat, xb
rename yhat drottmod2x
save "testc41", replace
clear

use "trainc41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc41"
predict yhat, xb
rename yhat nortlm2x
save "testc41", replace
clear


* d41
* RwandaXd lpro12x

use "traind41"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd41"
predict yhat, xb
rename yhat drottmod12x
save "testd41", replace
clear

use "traind41"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd41"
predict yhat, xb
rename yhat nortlm12x
save "testd41", replace
clear

* RwandaXd lpro1x

use "traind41"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd41"
predict yhat, xb
rename yhat drottmod1x
save "testd41", replace
clear

use "traind41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd41"
predict yhat, xb
rename yhat nortlm1x
save "testd41", replace
clear

* RwandaXd lpro2x

use "traind41"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd41"
predict yhat, xb
rename yhat drottmod2x
save "testd41", replace
clear

use "traind41"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd41"
predict yhat, xb
rename yhat nortlm2x
save "testd41", replace
clear

* a42
* RwandaXd lpro12x

use "traina42"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa42"
predict yhat, xb
rename yhat drottmod12x
save "testa42", replace
clear

use "traina42"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa42"
predict yhat, xb
rename yhat nortlm12x
save "testa42", replace
clear

* RwandaXd lpro1x

use "traina42"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa42"
predict yhat, xb
rename yhat drottmod1x
save "testa42", replace
clear

use "traina42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa42"
predict yhat, xb
rename yhat nortlm1x
save "testa42", replace
clear

* RwandaXd lpro2x

use "traina42"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa42"
predict yhat, xb
rename yhat drottmod2x
save "testa42", replace
clear

use "traina42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa42"
predict yhat, xb
rename yhat nortlm2x
save "testa42", replace
clear

* b42
* RwandaXd lpro12x

use "trainb42"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb42"
predict yhat, xb
rename yhat drottmod12x
save "testb42", replace
clear

use "trainb42"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb42"
predict yhat, xb
rename yhat nortlm12x
save "testb42", replace
clear

* RwandaXd lpro1x

use "trainb42"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb42"
predict yhat, xb
rename yhat drottmod1x
save "testb42", replace
clear

use "trainb42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb42"
predict yhat, xb
rename yhat nortlm1x
save "testb42", replace
clear

* RwandaXd lpro2x

use "trainb42"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb42"
predict yhat, xb
rename yhat drottmod2x
save "testb42", replace
clear

use "trainb42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb42"
predict yhat, xb
rename yhat nortlm2x
save "testb42", replace
clear

* c42
* RwandaXd lpro12x

use "trainc42"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc42"
predict yhat, xb
rename yhat drottmod12x
save "testc42", replace
clear

use "trainc42"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc42"
predict yhat, xb
rename yhat nortlm12x
save "testc42", replace
clear

* RwandaXd lpro1x

use "trainc42"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc42"
predict yhat, xb
rename yhat drottmod1x
save "testc42", replace
clear

use "trainc42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc42"
predict yhat, xb
rename yhat nortlm1x
save "testc42", replace
clear

* RwandaXd lpro2x

use "trainc42"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc42"
predict yhat, xb
rename yhat drottmod2x
save "testc42", replace
clear

use "trainc42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc42"
predict yhat, xb
rename yhat nortlm2x
save "testc42", replace
clear

* d42
* RwandaXd lpro12x

use "traind42"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd42"
predict yhat, xb
rename yhat drottmod12x
save "testd42", replace
clear

use "traind42"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd42"
predict yhat, xb
rename yhat nortlm12x
save "testd42", replace
clear

* RwandaXd lpro1x

use "traind42"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd42"
predict yhat, xb
rename yhat drottmod1x
save "testd42", replace
clear

use "traind42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd42"
predict yhat, xb
rename yhat nortlm1x
save "testd42", replace
clear

* RwandaXd lpro2x

use "traind42"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd42"
predict yhat, xb
rename yhat drottmod2x
save "testd42", replace
clear

use "traind42"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd42"
predict yhat, xb
rename yhat nortlm2x
save "testd42", replace
clear

* a43

* RwandaXd lpro12x

use "traina43"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa43"
predict yhat, xb
rename yhat drottmod12x
save "testa43", replace
clear

use "traina43"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa43"
predict yhat, xb
rename yhat nortlm12x
save "testa43", replace
clear

* RwandaXd lpro1x

use "traina43"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa43"
predict yhat, xb
rename yhat drottmod1x
save "testa43", replace
clear

use "traina43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa43"
predict yhat, xb
rename yhat nortlm1x
save "testa43", replace
clear

* RwandaXd lpro2x

use "traina43"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa43"
predict yhat, xb
rename yhat drottmod2x
save "testa43", replace
clear

use "traina43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa43"
predict yhat, xb
rename yhat nortlm2x
save "testa43", replace
clear

* b43
* RwandaXd lpro12x

use "trainb43"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb43"
predict yhat, xb
rename yhat drottmod12x
save "testb43", replace
clear

use "trainb43"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb43"
predict yhat, xb
rename yhat nortlm12x
save "testb43", replace
clear

* RwandaXd lpro1x

use "trainb43"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb43"
predict yhat, xb
rename yhat drottmod1x
save "testb43", replace
clear

use "trainb43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb43"
predict yhat, xb
rename yhat nortlm1x
save "testb43", replace
clear

* RwandaXd lpro2x

use "trainb43"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb43"
predict yhat, xb
rename yhat drottmod2x
save "testb43", replace
clear

use "trainb43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb43"
predict yhat, xb
rename yhat nortlm2x
save "testb43", replace
clear

* c43
* RwandaXd lpro12x

use "trainc43"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc43"
predict yhat, xb
rename yhat drottmod12x
save "testc43", replace
clear

use "trainc43"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc43"
predict yhat, xb
rename yhat nortlm12x
save "testc43", replace
clear

* RwandaXd lpro1x

use "trainc43"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc43"
predict yhat, xb
rename yhat drottmod1x
save "testc43", replace
clear

use "trainc43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc43"
predict yhat, xb
rename yhat nortlm1x
save "testc43", replace
clear

* RwandaXd lpro2x

use "trainc43"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc43"
predict yhat, xb
rename yhat drottmod2x
save "testc43", replace
clear

use "trainc43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc43"
predict yhat, xb
rename yhat nortlm2x
save "testc43", replace
clear

* d43
* RwandaXd lpro12x

use "traind43"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd43"
predict yhat, xb
rename yhat drottmod12x
save "testd43", replace
clear

use "traind43"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd43"
predict yhat, xb
rename yhat nortlm12x
save "testd43", replace
clear

* RwandaXd lpro1x

use "traind43"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd43"
predict yhat, xb
rename yhat drottmod1x
save "testd43", replace
clear

use "traind43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd43"
predict yhat, xb
rename yhat nortlm1x
save "testd43", replace
clear

* RwandaXd lpro2x

use "traind43"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd43"
predict yhat, xb
rename yhat drottmod2x
save "testd43", replace
clear

use "traind43"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd43"
predict yhat, xb
rename yhat nortlm2x
save "testd43", replace
clear


* a44
* RwandaXd lpro12x

use "traina44"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa44"
predict yhat, xb
rename yhat drottmod12x
save "testa44", replace
clear

use "traina44"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa44"
predict yhat, xb
rename yhat nortlm12x
save "testa44", replace
clear

* RwandaXd lpro1x

use "traina44"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa44"
predict yhat, xb
rename yhat drottmod1x
save "testa44", replace
clear

use "traina44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa44"
predict yhat, xb
rename yhat nortlm1x
save "testa44", replace
clear

* RwandaXd lpro2x

use "traina44"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa44"
predict yhat, xb
rename yhat drottmod2x
save "testa44", replace
clear

use "traina44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa44"
predict yhat, xb
rename yhat nortlm2x
save "testa44", replace
clear

* b44
* RwandaXd lpro12x

use "trainb44"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb44"
predict yhat, xb
rename yhat drottmod12x
save "testb44", replace
clear

use "trainb44"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb44"
predict yhat, xb
rename yhat nortlm12x
save "testb44", replace
clear

* RwandaXd lpro1x

use "trainb44"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb44"
predict yhat, xb
rename yhat drottmod1x
save "testb44", replace
clear

use "trainb44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb44"
predict yhat, xb
rename yhat nortlm1x
save "testb44", replace
clear

* RwandaXd lpro2x

use "trainb44"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb44"
predict yhat, xb
rename yhat drottmod2x
save "testb44", replace
clear

use "trainb44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb44"
predict yhat, xb
rename yhat nortlm2x
save "testb44", replace
clear

* c44
* RwandaXd lpro12x

use "trainc44"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc44"
predict yhat, xb
rename yhat drottmod12x
save "testc44", replace
clear

use "trainc44"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc44"
predict yhat, xb
rename yhat nortlm12x
save "testc44", replace
clear

* RwandaXd lpro1x

use "trainc44"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc44"
predict yhat, xb
rename yhat drottmod1x
save "testc44", replace
clear

use "trainc44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc44"
predict yhat, xb
rename yhat nortlm1x
save "testc44", replace
clear

* RwandaXd lpro2x

use "trainc44"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc44"
predict yhat, xb
rename yhat drottmod2x
save "testc44", replace
clear

use "trainc44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc44"
predict yhat, xb
rename yhat nortlm2x
save "testc44", replace
clear


* d44
* RwandaXd lpro12x

use "traind44"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd44"
predict yhat, xb
rename yhat drottmod12x
save "testd44", replace
clear

use "traind44"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd44"
predict yhat, xb
rename yhat nortlm12x
save "testd44", replace
clear

* RwandaXd lpro1x

use "traind44"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd44"
predict yhat, xb
rename yhat drottmod1x
save "testd44", replace
clear

use "traind44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd44"
predict yhat, xb
rename yhat nortlm1x
save "testd44", replace
clear

* RwandaXd lpro2x

use "traind44"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd44"
predict yhat, xb
rename yhat drottmod2x
save "testd44", replace
clear

use "traind44"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd44"
predict yhat, xb
rename yhat nortlm2x
save "testd44", replace
clear

* a45
* RwandaXd lpro12x

use "traina45"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa45"
predict yhat, xb
rename yhat drottmod12x
save "testa45", replace
clear

use "traina45"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa45"
predict yhat, xb
rename yhat nortlm12x
save "testa45", replace
clear

* RwandaXd lpro1x

use "traina45"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa45"
predict yhat, xb
rename yhat drottmod1x
save "testa45", replace
clear

use "traina45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa45"
predict yhat, xb
rename yhat nortlm1x
save "testa45", replace
clear

* RwandaXd lpro2x

use "traina45"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa45"
predict yhat, xb
rename yhat drottmod2x
save "testa45", replace
clear

use "traina45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa45"
predict yhat, xb
rename yhat nortlm2x
save "testa45", replace
clear

* b45
* RwandaXd lpro12x

use "trainb45"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb45"
predict yhat, xb
rename yhat drottmod12x
save "testb45", replace
clear

use "trainb45"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb45"
predict yhat, xb
rename yhat nortlm12x
save "testb45", replace
clear

* RwandaXd lpro1x

use "trainb45"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb45"
predict yhat, xb
rename yhat drottmod1x
save "testb45", replace
clear

use "trainb45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb45"
predict yhat, xb
rename yhat nortlm1x
save "testb45", replace
clear

* RwandaXd lpro2x

use "trainb45"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb45"
predict yhat, xb
rename yhat drottmod2x
save "testb45", replace

clear
use "trainb45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb45"
predict yhat, xb
rename yhat nortlm2x
save "testb45", replace
clear

* c45
* RwandaXd lpro12x

use "trainc45"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc45"
predict yhat, xb
rename yhat drottmod12x
save "testc45", replace
clear

use "trainc45"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc45"
predict yhat, xb
rename yhat nortlm12x
save "testc45", replace
clear

* RwandaXd lpro1x

use "trainc45"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc45"
predict yhat, xb
rename yhat drottmod1x
save "testc45", replace
clear

use "trainc45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc45"
predict yhat, xb
rename yhat nortlm1x
save "testc45", replace
clear

* RwandaXd lpro2x

use "trainc45"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc45"
predict yhat, xb
rename yhat drottmod2x
save "testc45", replace
clear

use "trainc45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc45"
predict yhat, xb
rename yhat nortlm2x
save "testc45", replace
clear

* d45
* RwandaXd lpro12x

use "traind45"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd45"
predict yhat, xb
rename yhat drottmod12x
save "testd45", replace
clear

use "traind45"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd45"
predict yhat, xb
rename yhat nortlm12x
save "testd45", replace
clear

* RwandaXd lpro1x

use "traind45"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd45"
predict yhat, xb
rename yhat drottmod1x
save "testd45", replace
clear

use "traind45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd45"
predict yhat, xb
rename yhat nortlm1x
save "testd45", replace
clear

* RwandaXd lpro2x

use "traind45"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd45"
predict yhat, xb
rename yhat drottmod2x
save "testd45", replace
clear

use "traind45"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd45"
predict yhat, xb
rename yhat nortlm2x
save "testd45", replace
clear

* a46
* RwandaXd lpro12x

use "traina46"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa46"
predict yhat, xb
rename yhat drottmod12x
save "testa46", replace
clear

use "traina46"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa46"
predict yhat, xb
rename yhat nortlm12x
save "testa46", replace
clear

* RwandaXd lpro1x

use "traina46"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa46"
predict yhat, xb
rename yhat drottmod1x
save "testa46", replace
clear

use "traina46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa46"
predict yhat, xb
rename yhat nortlm1x
save "testa46", replace
clear

* RwandaXd lpro2x

use "traina46"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa46"
predict yhat, xb
rename yhat drottmod2x
save "testa46", replace
clear

use "traina46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa46"
predict yhat, xb
rename yhat nortlm2x
save "testa46", replace
clear

* b46
* RwandaXd lpro12x

use "trainb46"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb46"
predict yhat, xb
rename yhat drottmod12x
save "testb46", replace
clear

use "trainb46"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb46"
predict yhat, xb
rename yhat nortlm12x
save "testb46", replace
clear

* RwandaXd lpro1x

use "trainb46"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb46"
predict yhat, xb
rename yhat drottmod1x
save "testb46", replace
clear

use "trainb46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb46"
predict yhat, xb
rename yhat nortlm1x
save "testb46", replace
clear

* RwandaXd lpro2x

use "trainb46"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb46"
predict yhat, xb
rename yhat drottmod2x
save "testb46", replace
clear

use "trainb46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb46"
predict yhat, xb
rename yhat nortlm2x
save "testb46", replace
clear

* c46
* RwandaXd lpro12x

use "trainc46"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc46"
predict yhat, xb
rename yhat drottmod12x
save "testc46", replace
clear

use "trainc46"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc46"
predict yhat, xb
rename yhat nortlm12x
save "testc46", replace
clear

* RwandaXd lpro1x

use "trainc46"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc46"
predict yhat, xb
rename yhat drottmod1x
save "testc46", replace
clear

use "trainc46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc46"
predict yhat, xb
rename yhat nortlm1x
save "testc46", replace
clear

* RwandaXd lpro2x

use "trainc46"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc46"
predict yhat, xb
rename yhat drottmod2x
save "testc46", replace
clear

use "trainc46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc46"
predict yhat, xb
rename yhat nortlm2x
save "testc46", replace
clear

* d46
* RwandaXd lpro12x

use "traind46"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd46"
predict yhat, xb
rename yhat drottmod12x
save "testd46", replace
clear

use "traind46"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd46"
predict yhat, xb
rename yhat nortlm12x
save "testd46", replace
clear

* RwandaXd lpro1x

use "traind46"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd46"
predict yhat, xb
rename yhat drottmod1x
save "testd46", replace
clear

use "traind46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd46"
predict yhat, xb
rename yhat nortlm1x
save "testd46", replace
clear

* RwandaXd lpro2x

use "traind46"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd46"
predict yhat, xb
rename yhat drottmod2x
save "testd46", replace
clear

use "traind46"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd46"
predict yhat, xb
rename yhat nortlm2x
save "testd46", replace
clear

* a47
* RwandaXd lpro12x

use "traina47"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa47"
predict yhat, xb
rename yhat drottmod12x
save "testa47", replace
clear

use "traina47"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa47"
predict yhat, xb
rename yhat nortlm12x
save "testa47", replace
clear

* RwandaXd lpro1x

use "traina47"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa47"
predict yhat, xb
rename yhat drottmod1x
save "testa47", replace
clear

use "traina47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa47"
predict yhat, xb
rename yhat nortlm1x
save "testa47", replace
clear

* RwandaXd lpro2x

use "traina47"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa47"
predict yhat, xb
rename yhat drottmod2x
save "testa47", replace
clear

use "traina47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa47"
predict yhat, xb
rename yhat nortlm2x
save "testa47", replace
clear

* b47
* RwandaXd lpro12x

use "trainb47"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb47"
predict yhat, xb
rename yhat drottmod12x
save "testb47", replace
clear

use "trainb47"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb47"
predict yhat, xb
rename yhat nortlm12x
save "testb47", replace
clear

* RwandaXd lpro1x

use "trainb47"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb47"
predict yhat, xb
rename yhat drottmod1x
save "testb47", replace
clear

use "trainb47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb47"
predict yhat, xb
rename yhat nortlm1x
save "testb47", replace
clear

* RwandaXd lpro2x

use "trainb47"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb47"
predict yhat, xb
rename yhat drottmod2x
save "testb47", replace
clear

use "trainb47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb47"
predict yhat, xb
rename yhat nortlm2x
save "testb47", replace
clear

* c47
* RwandaXd lpro12x

use "trainc47"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc47"
predict yhat, xb
rename yhat drottmod12x
save "testc47", replace
clear

use "trainc47"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc47"
predict yhat, xb
rename yhat nortlm12x
save "testc47", replace
clear

* RwandaXd lpro1x

use "trainc47"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc47"
predict yhat, xb
rename yhat drottmod1x
save "testc47", replace
clear

use "trainc47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc47"
predict yhat, xb
rename yhat nortlm1x
save "testc47", replace
clear

* RwandaXd lpro2x

use "trainc47"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc47"
predict yhat, xb
rename yhat drottmod2x
save "testc47", replace
clear

use "trainc47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc47"
predict yhat, xb
rename yhat nortlm2x
save "testc47", replace
clear


* d47
* RwandaXd lpro12x

use "traind47"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd47"
predict yhat, xb
rename yhat drottmod12x
save "testd47", replace
clear

use "traind47"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd47"
predict yhat, xb
rename yhat nortlm12x
save "testd47", replace
clear

* RwandaXd lpro1x

use "traind47"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd47"
predict yhat, xb
rename yhat drottmod1x
save "testd47", replace
clear

use "traind47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd47"
predict yhat, xb
rename yhat nortlm1x
save "testd47", replace
clear

* RwandaXd lpro2x

use "traind47"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd47"
predict yhat, xb
rename yhat drottmod2x
save "testd47", replace
clear

use "traind47"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd47"
predict yhat, xb
rename yhat nortlm2x
save "testd47", replace
clear

* a48
* RwandaXd lpro12x

use "traina48"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa48"
predict yhat, xb
rename yhat drottmod12x
save "testa48", replace
clear

use "traina48"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa48"
predict yhat, xb
rename yhat nortlm12x
save "testa48", replace
clear

* RwandaXd lpro1x

use "traina48"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa48"
predict yhat, xb
rename yhat drottmod1x
save "testa48", replace
clear

use "traina48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa48"
predict yhat, xb
rename yhat nortlm1x
save "testa48", replace
clear

* RwandaXd lpro2x

use "traina48"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa48"
predict yhat, xb
rename yhat drottmod2x
save "testa48", replace
clear

use "traina48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa48"
predict yhat, xb
rename yhat nortlm2x
save "testa48", replace
clear

* b48
* RwandaXd lpro12x

use "trainb48"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb48"
predict yhat, xb
rename yhat drottmod12x
save "testb48", replace
clear

use "trainb48"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb48"
predict yhat, xb
rename yhat nortlm12x
save "testb48", replace
clear

* RwandaXd lpro1x

use "trainb48"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb48"
predict yhat, xb
rename yhat drottmod1x
save "testb48", replace
clear

use "trainb48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb48"
predict yhat, xb
rename yhat nortlm1x
save "testb48", replace
clear

* RwandaXd lpro2x

use "trainb48"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb48"
predict yhat, xb
rename yhat drottmod2x
save "testb48", replace
clear

use "trainb48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb48"
predict yhat, xb
rename yhat nortlm2x
save "testb48", replace
clear

* c48
* RwandaXd lpro12x

use "trainc48"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc48"
predict yhat, xb
rename yhat drottmod12x
save "testc48", replace
clear

use "trainc48"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc48"
predict yhat, xb
rename yhat nortlm12x
save "testc48", replace
clear

* RwandaXd lpro1x

use "trainc48"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc48"
predict yhat, xb
rename yhat drottmod1x
save "testc48", replace
clear

use "trainc48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc48"
predict yhat, xb
rename yhat nortlm1x
save "testc48", replace
clear

* RwandaXd lpro2x

use "trainc48"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc48"
predict yhat, xb
rename yhat drottmod2x
save "testc48", replace
clear

use "trainc48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc48"
predict yhat, xb
rename yhat nortlm2x
save "testc48", replace
clear

* d48
* RwandaXd lpro12x

use "traind48"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd48"
predict yhat, xb
rename yhat drottmod12x
save "testd48", replace
clear

use "traind48"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd48"
predict yhat, xb
rename yhat nortlm12x
save "testd48", replace
clear

* RwandaXd lpro1x

use "traind48"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd48"
predict yhat, xb
rename yhat drottmod1x
save "testd48", replace
clear

use "traind48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd48"
predict yhat, xb
rename yhat nortlm1x
save "testd48", replace
clear

* RwandaXd lpro2x

use "traind48"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd48"
predict yhat, xb
rename yhat drottmod2x
save "testd48", replace
clear

use "traind48"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd48"
predict yhat, xb
rename yhat nortlm2x
save "testd48", replace
clear

* a49
* RwandaXd lpro12x

use "traina49"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa49"
predict yhat, xb
rename yhat drottmod12x
save "testa49", replace
clear

use "traina49"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa49"
predict yhat, xb
rename yhat nortlm12x
save "testa49", replace
clear

* RwandaXd lpro1x

use "traina49"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa49"
predict yhat, xb
rename yhat drottmod1x
save "testa49", replace
clear

use "traina49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa49"
predict yhat, xb
rename yhat nortlm1x
save "testa49", replace
clear

* RwandaXd lpro2x

use "traina49"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa49"
predict yhat, xb
rename yhat drottmod2x
save "testa49", replace
clear

use "traina49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa49"
predict yhat, xb
rename yhat nortlm2x
save "testa49", replace
clear

* b49
* RwandaXd lpro12x

use "trainb49"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb49"
predict yhat, xb
rename yhat drottmod12x
save "testb49", replace
clear

use "trainb49"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb49"
predict yhat, xb
rename yhat nortlm12x
save "testb49", replace
clear

* RwandaXd lpro1x

use "trainb49"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb49"
predict yhat, xb
rename yhat drottmod1x
save "testb49", replace
clear

use "trainb49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb49"
predict yhat, xb
rename yhat nortlm1x
save "testb49", replace
clear

* RwandaXd lpro2x

use "trainb49"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb49"
predict yhat, xb
rename yhat drottmod2x
save "testb49", replace
clear

use "trainb49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb49"
predict yhat, xb
rename yhat nortlm2x
save "testb49", replace
clear

* c49
* RwandaXd lpro12x

use "trainc49"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc49"
predict yhat, xb
rename yhat drottmod12x
save "testc49", replace
clear

use "trainc49"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc49"
predict yhat, xb
rename yhat nortlm12x
save "testc49", replace
clear

* RwandaXd lpro1x

use "trainc49"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc49"
predict yhat, xb
rename yhat drottmod1x
save "testc49", replace
clear

use "trainc49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc49"
predict yhat, xb
rename yhat nortlm1x
save "testc49", replace
clear

* RwandaXd lpro2x

use "trainc49"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc49"
predict yhat, xb
rename yhat drottmod2x
save "testc49", replace
clear

use "trainc49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc49"
predict yhat, xb
rename yhat nortlm2x
save "testc49", replace
clear

* d49
* RwandaXd lpro12x

use "traind49"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd49"
predict yhat, xb
rename yhat drottmod12x
save "testd49", replace
clear

use "traind49"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd49"
predict yhat, xb
rename yhat nortlm12x
save "testd49", replace
clear

* RwandaXd lpro1x

use "traind49"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd49"
predict yhat, xb
rename yhat drottmod1x
save "testd49", replace
clear

use "traind49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd49"
predict yhat, xb
rename yhat nortlm1x
save "testd49", replace
clear

* RwandaXd lpro2x

use "traind49"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd49"
predict yhat, xb
rename yhat drottmod2x
save "testd49", replace
clear

use "traind49"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd49"
predict yhat, xb
rename yhat nortlm2x
save "testd49", replace
clear


* a50
* RwandaXd lpro12x

use "traina50"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa50"
predict yhat, xb
rename yhat drottmod12x
save "testa50", replace
clear

use "traina50"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa50"
predict yhat, xb
rename yhat nortlm12x
save "testa50", replace
clear

* RwandaXd lpro1x

use "traina50"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa50"
predict yhat, xb
rename yhat drottmod1x
save "testa50", replace
clear

use "traina50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa50"
predict yhat, xb
rename yhat nortlm1x
save "testa50", replace
clear

* RwandaXd lpro2x

use "traina50"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa50"
predict yhat, xb
rename yhat drottmod2x
save "testa50", replace
clear

use "traina50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa50"
predict yhat, xb
rename yhat nortlm2x
save "testa50", replace
clear

* b50
* RwandaXd lpro12x

use "trainb50"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb50"
predict yhat, xb
rename yhat drottmod12x
save "testb50", replace
clear

use "trainb50"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb50"
predict yhat, xb
rename yhat nortlm12x
save "testb50", replace
clear

* RwandaXd lpro1x

use "trainb50"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb50"
predict yhat, xb
rename yhat drottmod1x
save "testb50", replace
clear

use "trainb50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb50"
predict yhat, xb
rename yhat nortlm1x
save "testb50", replace
clear

* RwandaXd lpro2x

use "trainb50"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb50"
predict yhat, xb
rename yhat drottmod2x
save "testb50", replace
clear

use "trainb50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb50"
predict yhat, xb
rename yhat nortlm2x
save "testb50", replace
clear

* c50
* RwandaXd lpro12x

use "trainc50"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc50"
predict yhat, xb
rename yhat drottmod12x
save "testc50", replace
clear

use "trainc50"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc50"
predict yhat, xb
rename yhat nortlm12x
save "testc50", replace
clear

* RwandaXd lpro1x
use "trainc50"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc50"
predict yhat, xb
rename yhat drottmod1x
save "testc50", replace
clear

use "trainc50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc50"
predict yhat, xb
rename yhat nortlm1x
save "testc50", replace
clear

* RwandaXd lpro2x

use "trainc50"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc50"
predict yhat, xb
rename yhat drottmod2x
save "testc50", replace
clear

use "trainc50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc50"
predict yhat, xb
rename yhat nortlm2x
save "testc50", replace
clear


* d50
* RwandaXd lpro12x

use "traind50"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd50"
predict yhat, xb
rename yhat drottmod12x
save "testd50", replace
clear

use "traind50"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd50"
predict yhat, xb
rename yhat nortlm12x
save "testd50", replace
clear

* RwandaXd lpro1x

use "traind50"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd50"
predict yhat, xb
rename yhat drottmod1x
save "testd50", replace
clear

use "traind50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd50"
predict yhat, xb
rename yhat nortlm1x
save "testd50", replace
clear

* RwandaXd lpro2x

use "traind50"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd50"
predict yhat, xb
rename yhat drottmod2x
save "testd50", replace
clear

use "traind50"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd50"
predict yhat, xb
rename yhat nortlm2x
save "testd50", replace
clear


* a51
* RwandaXd lpro12x

use "traina51"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa51"
predict yhat, xb
rename yhat drottmod12x
save "testa51", replace
clear

use "traina51"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa51"
predict yhat, xb
rename yhat nortlm12x
save "testa51", replace
clear

* RwandaXd lpro1x

use "traina51"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa51"
predict yhat, xb
rename yhat drottmod1x
save "testa51", replace
clear

use "traina51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa51"
predict yhat, xb
rename yhat nortlm1x
save "testa51", replace
clear

* RwandaXd lpro2x

use "traina51"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa51"
predict yhat, xb
rename yhat drottmod2x
save "testa51", replace
clear

use "traina51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa51"
predict yhat, xb
rename yhat nortlm2x
save "testa51", replace
clear

* b51
* RwandaXd lpro12x

use "trainb51"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb51"
predict yhat, xb
rename yhat drottmod12x
save "testb51", replace
clear

use "trainb51"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb51"
predict yhat, xb
rename yhat nortlm12x
save "testb51", replace
clear

* RwandaXd lpro1x

use "trainb51"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb51"
predict yhat, xb
rename yhat drottmod1x
save "testb51", replace
clear

use "trainb51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb51"
predict yhat, xb
rename yhat nortlm1x
save "testb51", replace
clear

* RwandaXd lpro2x

use "trainb51"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb51"
predict yhat, xb
rename yhat drottmod2x
save "testb51", replace
clear

use "trainb51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb51"
predict yhat, xb
rename yhat nortlm2x
save "testb51", replace
clear

* c51
* RwandaXd lpro12x

use "trainc51"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc51"
predict yhat, xb
rename yhat drottmod12x
save "testc51", replace
clear

use "trainc51"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc51"
predict yhat, xb
rename yhat nortlm12x
save "testc51", replace
clear

* RwandaXd lpro1x

use "trainc51"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc51"
predict yhat, xb
rename yhat drottmod1x
save "testc51", replace
clear

use "trainc51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc51"
predict yhat, xb
rename yhat nortlm1x
save "testc51", replace
clear

* RwandaXd lpro2x

use "trainc51"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc51"
predict yhat, xb
rename yhat drottmod2x
save "testc51", replace
clear

use "trainc51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc51"
predict yhat, xb
rename yhat nortlm2x
save "testc51", replace
clear


* d51
* RwandaXd lpro12x

use "traind51"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd51"
predict yhat, xb
rename yhat drottmod12x
save "testd51", replace
clear

use "traind51"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd51"
predict yhat, xb
rename yhat nortlm12x
save "testd51", replace
clear

* RwandaXd lpro1x

use "traind51"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd51"
predict yhat, xb
rename yhat drottmod1x
save "testd51", replace
clear

use "traind51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd51"
predict yhat, xb
rename yhat nortlm1x
save "testd51", replace
clear

* RwandaXd lpro2x

use "traind51"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd51"
predict yhat, xb
rename yhat drottmod2x
save "testd51", replace
clear

use "traind51"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd51"
predict yhat, xb
rename yhat nortlm2x
save "testd51", replace
clear

* a52
* RwandaXd lpro12x

use "traina52"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa52"
predict yhat, xb
rename yhat drottmod12x
save "testa52", replace
clear

use "traina52"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa52"
predict yhat, xb
rename yhat nortlm12x
save "testa52", replace
clear

* RwandaXd lpro1x

use "traina52"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa52"
predict yhat, xb
rename yhat drottmod1x
save "testa52", replace
clear

use "traina52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa52"
predict yhat, xb
rename yhat nortlm1x
save "testa52", replace
clear

* RwandaXd lpro2x

use "traina52"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa52"
predict yhat, xb
rename yhat drottmod2x
save "testa52", replace
clear

use "traina52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa52"
predict yhat, xb
rename yhat nortlm2x
save "testa52", replace
clear

* b52
* RwandaXd lpro12x

use "trainb52"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb52"
predict yhat, xb
rename yhat drottmod12x
save "testb52", replace
clear

use "trainb52"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb52"
predict yhat, xb
rename yhat nortlm12x
save "testb52", replace
clear

* RwandaXd lpro1x

use "trainb52"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb52"
predict yhat, xb
rename yhat drottmod1x
save "testb52", replace
clear

use "trainb52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb52"
predict yhat, xb
rename yhat nortlm1x
save "testb52", replace
clear

* RwandaXd lpro2x

use "trainb52"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb52"
predict yhat, xb
rename yhat drottmod2x
save "testb52", replace
clear

use "trainb52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb52"
predict yhat, xb
rename yhat nortlm2x
save "testb52", replace
clear

* c52
* RwandaXd lpro12x

use "trainc52"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc52"
predict yhat, xb
rename yhat drottmod12x
save "testc52", replace
clear

use "trainc52"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc52"
predict yhat, xb
rename yhat nortlm12x
save "testc52", replace
clear

* RwandaXd lpro1x

use "trainc52"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc52"
predict yhat, xb
rename yhat drottmod1x
save "testc52", replace
clear

use "trainc52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc52"
predict yhat, xb
rename yhat nortlm1x
save "testc52", replace
clear

* RwandaXd lpro2x

use "trainc52"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc52"
predict yhat, xb
rename yhat drottmod2x
save "testc52", replace
clear

use "trainc52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc52"
predict yhat, xb
rename yhat nortlm2x
save "testc52", replace
clear

* d52
* RwandaXd lpro12x

use "traind52"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd52"
predict yhat, xb
rename yhat drottmod12x
save "testd52", replace
clear

use "traind52"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd52"
predict yhat, xb
rename yhat nortlm12x
save "testd52", replace
clear

* RwandaXd lpro1x

use "traind52"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd52"
predict yhat, xb
rename yhat drottmod1x
save "testd52", replace
clear

use "traind52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd52"
predict yhat, xb
rename yhat nortlm1x
save "testd52", replace
clear

* RwandaXd lpro2x

use "traind52"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd52"
predict yhat, xb
rename yhat drottmod2x
save "testd52", replace
clear

use "traind52"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd52"
predict yhat, xb
rename yhat nortlm2x
save "testd52", replace
clear

* a53

* RwandaXd lpro12x

use "traina53"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa53"
predict yhat, xb
rename yhat drottmod12x
save "testa53", replace
clear

use "traina53"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa53"
predict yhat, xb
rename yhat nortlm12x
save "testa53", replace
clear

* RwandaXd lpro1x

use "traina53"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa53"
predict yhat, xb
rename yhat drottmod1x
save "testa53", replace
clear

use "traina53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa53"
predict yhat, xb
rename yhat nortlm1x
save "testa53", replace
clear

* RwandaXd lpro2x

use "traina53"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa53"
predict yhat, xb
rename yhat drottmod2x
save "testa53", replace
clear

use "traina53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa53"
predict yhat, xb
rename yhat nortlm2x
save "testa53", replace
clear

* b53
* RwandaXd lpro12x

use "trainb53"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb53"
predict yhat, xb
rename yhat drottmod12x
save "testb53", replace
clear

use "trainb53"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb53"
predict yhat, xb
rename yhat nortlm12x
save "testb53", replace
clear

* RwandaXd lpro1x

use "trainb53"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb53"
predict yhat, xb
rename yhat drottmod1x
save "testb53", replace
clear

use "trainb53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb53"
predict yhat, xb
rename yhat nortlm1x
save "testb53", replace
clear

* RwandaXd lpro2x

use "trainb53"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb53"
predict yhat, xb
rename yhat drottmod2x
save "testb53", replace
clear

use "trainb53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb53"
predict yhat, xb
rename yhat nortlm2x
save "testb53", replace
clear

* c53
* RwandaXd lpro12x

use "trainc53"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc53"
predict yhat, xb
rename yhat drottmod12x
save "testc53", replace
clear

use "trainc53"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc53"
predict yhat, xb
rename yhat nortlm12x
save "testc53", replace
clear

* RwandaXd lpro1x

use "trainc53"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc53"
predict yhat, xb
rename yhat drottmod1x
save "testc53", replace
clear

use "trainc53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc53"
predict yhat, xb
rename yhat nortlm1x
save "testc53", replace
clear

* RwandaXd lpro2x

use "trainc53"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc53"
predict yhat, xb
rename yhat drottmod2x
save "testc53", replace
clear

use "trainc53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc53"
predict yhat, xb
rename yhat nortlm2x
save "testc53", replace
clear

* d53
* RwandaXd lpro12x

use "traind53"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd53"
predict yhat, xb
rename yhat drottmod12x
save "testd53", replace
clear

use "traind53"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd53"
predict yhat, xb
rename yhat nortlm12x
save "testd53", replace
clear

* RwandaXd lpro1x

use "traind53"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd53"
predict yhat, xb
rename yhat drottmod1x
save "testd53", replace
clear

use "traind53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd53"
predict yhat, xb
rename yhat nortlm1x
save "testd53", replace
clear

* RwandaXd lpro2x

use "traind53"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd53"
predict yhat, xb
rename yhat drottmod2x
save "testd53", replace
clear

use "traind53"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd53"
predict yhat, xb
rename yhat nortlm2x
save "testd53", replace
clear


* a54
* RwandaXd lpro12x

use "traina54"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa54"
predict yhat, xb
rename yhat drottmod12x
save "testa54", replace
clear

use "traina54"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa54"
predict yhat, xb
rename yhat nortlm12x
save "testa54", replace
clear

* RwandaXd lpro1x

use "traina54"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa54"
predict yhat, xb
rename yhat drottmod1x
save "testa54", replace
clear

use "traina54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa54"
predict yhat, xb
rename yhat nortlm1x
save "testa54", replace
clear

* RwandaXd lpro2x

use "traina54"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa54"
predict yhat, xb
rename yhat drottmod2x
save "testa54", replace
clear

use "traina54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa54"
predict yhat, xb
rename yhat nortlm2x
save "testa54", replace
clear

* b54
* RwandaXd lpro12x

use "trainb54"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb54"
predict yhat, xb
rename yhat drottmod12x
save "testb54", replace
clear

use "trainb54"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb54"
predict yhat, xb
rename yhat nortlm12x
save "testb54", replace
clear

* RwandaXd lpro1x

use "trainb54"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb54"
predict yhat, xb
rename yhat drottmod1x
save "testb54", replace
clear

use "trainb54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb54"
predict yhat, xb
rename yhat nortlm1x
save "testb54", replace
clear

* RwandaXd lpro2x

use "trainb54"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb54"
predict yhat, xb
rename yhat drottmod2x
save "testb54", replace
clear

use "trainb54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb54"
predict yhat, xb
rename yhat nortlm2x
save "testb54", replace
clear

* c54
* RwandaXd lpro12x

use "trainc54"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc54"
predict yhat, xb
rename yhat drottmod12x
save "testc54", replace
clear

use "trainc54"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc54"
predict yhat, xb
rename yhat nortlm12x
save "testc54", replace
clear

* RwandaXd lpro1x

use "trainc54"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc54"
predict yhat, xb
rename yhat drottmod1x
save "testc54", replace
clear

use "trainc54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc54"
predict yhat, xb
rename yhat nortlm1x
save "testc54", replace
clear

* RwandaXd lpro2x

use "trainc54"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc54"
predict yhat, xb
rename yhat drottmod2x
save "testc54", replace
clear

use "trainc54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc54"
predict yhat, xb
rename yhat nortlm2x
save "testc54", replace
clear


* d54
* RwandaXd lpro12x

use "traind54"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd54"
predict yhat, xb
rename yhat drottmod12x
save "testd54", replace
clear

use "traind54"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd54"
predict yhat, xb
rename yhat nortlm12x
save "testd54", replace
clear

* RwandaXd lpro1x

use "traind54"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd54"
predict yhat, xb
rename yhat drottmod1x
save "testd54", replace
clear

use "traind54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd54"
predict yhat, xb
rename yhat nortlm1x
save "testd54", replace
clear

* RwandaXd lpro2x

use "traind54"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd54"
predict yhat, xb
rename yhat drottmod2x
save "testd54", replace
clear

use "traind54"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd54"
predict yhat, xb
rename yhat nortlm2x
save "testd54", replace
clear

* a55
* RwandaXd lpro12x

use "traina55"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa55"
predict yhat, xb
rename yhat drottmod12x
save "testa55", replace
clear

use "traina55"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa55"
predict yhat, xb
rename yhat nortlm12x
save "testa55", replace
clear

* RwandaXd lpro1x

use "traina55"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa55"
predict yhat, xb
rename yhat drottmod1x
save "testa55", replace
clear

use "traina55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa55"
predict yhat, xb
rename yhat nortlm1x
save "testa55", replace
clear

* RwandaXd lpro2x

use "traina55"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa55"
predict yhat, xb
rename yhat drottmod2x
save "testa55", replace
clear

use "traina55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa55"
predict yhat, xb
rename yhat nortlm2x
save "testa55", replace
clear

* b55
* RwandaXd lpro12x

use "trainb55"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb55"
predict yhat, xb
rename yhat drottmod12x
save "testb55", replace
clear

use "trainb55"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb55"
predict yhat, xb
rename yhat nortlm12x
save "testb55", replace
clear

* RwandaXd lpro1x

use "trainb55"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb55"
predict yhat, xb
rename yhat drottmod1x
save "testb55", replace
clear

use "trainb55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb55"
predict yhat, xb
rename yhat nortlm1x
save "testb55", replace
clear

* RwandaXd lpro2x

use "trainb55"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb55"
predict yhat, xb
rename yhat drottmod2x
save "testb55", replace

clear
use "trainb55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb55"
predict yhat, xb
rename yhat nortlm2x
save "testb55", replace
clear

* c55
* RwandaXd lpro12x

use "trainc55"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc55"
predict yhat, xb
rename yhat drottmod12x
save "testc55", replace
clear

use "trainc55"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc55"
predict yhat, xb
rename yhat nortlm12x
save "testc55", replace
clear

* RwandaXd lpro1x

use "trainc55"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc55"
predict yhat, xb
rename yhat drottmod1x
save "testc55", replace
clear

use "trainc55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc55"
predict yhat, xb
rename yhat nortlm1x
save "testc55", replace
clear

* RwandaXd lpro2x

use "trainc55"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc55"
predict yhat, xb
rename yhat drottmod2x
save "testc55", replace
clear

use "trainc55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc55"
predict yhat, xb
rename yhat nortlm2x
save "testc55", replace
clear

* d55
* RwandaXd lpro12x

use "traind55"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd55"
predict yhat, xb
rename yhat drottmod12x
save "testd55", replace
clear

use "traind55"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd55"
predict yhat, xb
rename yhat nortlm12x
save "testd55", replace
clear

* RwandaXd lpro1x

use "traind55"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd55"
predict yhat, xb
rename yhat drottmod1x
save "testd55", replace
clear

use "traind55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd55"
predict yhat, xb
rename yhat nortlm1x
save "testd55", replace
clear

* RwandaXd lpro2x

use "traind55"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd55"
predict yhat, xb
rename yhat drottmod2x
save "testd55", replace
clear

use "traind55"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd55"
predict yhat, xb
rename yhat nortlm2x
save "testd55", replace
clear

* a56
* RwandaXd lpro12x

use "traina56"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa56"
predict yhat, xb
rename yhat drottmod12x
save "testa56", replace
clear

use "traina56"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa56"
predict yhat, xb
rename yhat nortlm12x
save "testa56", replace
clear

* RwandaXd lpro1x

use "traina56"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa56"
predict yhat, xb
rename yhat drottmod1x
save "testa56", replace
clear

use "traina56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa56"
predict yhat, xb
rename yhat nortlm1x
save "testa56", replace
clear

* RwandaXd lpro2x

use "traina56"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa56"
predict yhat, xb
rename yhat drottmod2x
save "testa56", replace
clear

use "traina56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa56"
predict yhat, xb
rename yhat nortlm2x
save "testa56", replace
clear

* b56
* RwandaXd lpro12x

use "trainb56"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb56"
predict yhat, xb
rename yhat drottmod12x
save "testb56", replace
clear

use "trainb56"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb56"
predict yhat, xb
rename yhat nortlm12x
save "testb56", replace
clear

* RwandaXd lpro1x

use "trainb56"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb56"
predict yhat, xb
rename yhat drottmod1x
save "testb56", replace
clear

use "trainb56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb56"
predict yhat, xb
rename yhat nortlm1x
save "testb56", replace
clear

* RwandaXd lpro2x

use "trainb56"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb56"
predict yhat, xb
rename yhat drottmod2x
save "testb56", replace
clear

use "trainb56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb56"
predict yhat, xb
rename yhat nortlm2x
save "testb56", replace
clear

* c56
* RwandaXd lpro12x

use "trainc56"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc56"
predict yhat, xb
rename yhat drottmod12x
save "testc56", replace
clear

use "trainc56"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc56"
predict yhat, xb
rename yhat nortlm12x
save "testc56", replace
clear

* RwandaXd lpro1x

use "trainc56"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc56"
predict yhat, xb
rename yhat drottmod1x
save "testc56", replace
clear

use "trainc56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc56"
predict yhat, xb
rename yhat nortlm1x
save "testc56", replace
clear

* RwandaXd lpro2x

use "trainc56"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc56"
predict yhat, xb
rename yhat drottmod2x
save "testc56", replace
clear

use "trainc56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc56"
predict yhat, xb
rename yhat nortlm2x
save "testc56", replace
clear

* d56
* RwandaXd lpro12x

use "traind56"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd56"
predict yhat, xb
rename yhat drottmod12x
save "testd56", replace
clear

use "traind56"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd56"
predict yhat, xb
rename yhat nortlm12x
save "testd56", replace
clear

* RwandaXd lpro1x

use "traind56"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd56"
predict yhat, xb
rename yhat drottmod1x
save "testd56", replace
clear

use "traind56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd56"
predict yhat, xb
rename yhat nortlm1x
save "testd56", replace
clear

* RwandaXd lpro2x

use "traind56"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd56"
predict yhat, xb
rename yhat drottmod2x
save "testd56", replace
clear

use "traind56"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd56"
predict yhat, xb
rename yhat nortlm2x
save "testd56", replace
clear

* a57
* RwandaXd lpro12x

use "traina57"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa57"
predict yhat, xb
rename yhat drottmod12x
save "testa57", replace
clear

use "traina57"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa57"
predict yhat, xb
rename yhat nortlm12x
save "testa57", replace
clear

* RwandaXd lpro1x

use "traina57"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa57"
predict yhat, xb
rename yhat drottmod1x
save "testa57", replace
clear

use "traina57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa57"
predict yhat, xb
rename yhat nortlm1x
save "testa57", replace
clear

* RwandaXd lpro2x

use "traina57"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa57"
predict yhat, xb
rename yhat drottmod2x
save "testa57", replace
clear

use "traina57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa57"
predict yhat, xb
rename yhat nortlm2x
save "testa57", replace
clear

* b57
* RwandaXd lpro12x

use "trainb57"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb57"
predict yhat, xb
rename yhat drottmod12x
save "testb57", replace
clear

use "trainb57"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb57"
predict yhat, xb
rename yhat nortlm12x
save "testb57", replace
clear

* RwandaXd lpro1x

use "trainb57"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb57"
predict yhat, xb
rename yhat drottmod1x
save "testb57", replace
clear

use "trainb57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb57"
predict yhat, xb
rename yhat nortlm1x
save "testb57", replace
clear

* RwandaXd lpro2x

use "trainb57"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb57"
predict yhat, xb
rename yhat drottmod2x
save "testb57", replace
clear

use "trainb57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb57"
predict yhat, xb
rename yhat nortlm2x
save "testb57", replace
clear

* c57
* RwandaXd lpro12x

use "trainc57"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc57"
predict yhat, xb
rename yhat drottmod12x
save "testc57", replace
clear

use "trainc57"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc57"
predict yhat, xb
rename yhat nortlm12x
save "testc57", replace
clear

* RwandaXd lpro1x

use "trainc57"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc57"
predict yhat, xb
rename yhat drottmod1x
save "testc57", replace
clear

use "trainc57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc57"
predict yhat, xb
rename yhat nortlm1x
save "testc57", replace
clear

* RwandaXd lpro2x

use "trainc57"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc57"
predict yhat, xb
rename yhat drottmod2x
save "testc57", replace
clear

use "trainc57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc57"
predict yhat, xb
rename yhat nortlm2x
save "testc57", replace
clear


* d57
* RwandaXd lpro12x

use "traind57"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd57"
predict yhat, xb
rename yhat drottmod12x
save "testd57", replace
clear

use "traind57"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd57"
predict yhat, xb
rename yhat nortlm12x
save "testd57", replace
clear

* RwandaXd lpro1x

use "traind57"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd57"
predict yhat, xb
rename yhat drottmod1x
save "testd57", replace
clear

use "traind57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd57"
predict yhat, xb
rename yhat nortlm1x
save "testd57", replace
clear

* RwandaXd lpro2x

use "traind57"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd57"
predict yhat, xb
rename yhat drottmod2x
save "testd57", replace
clear

use "traind57"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd57"
predict yhat, xb
rename yhat nortlm2x
save "testd57", replace
clear

* a58
* RwandaXd lpro12x

use "traina58"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa58"
predict yhat, xb
rename yhat drottmod12x
save "testa58", replace
clear

use "traina58"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa58"
predict yhat, xb
rename yhat nortlm12x
save "testa58", replace
clear

* RwandaXd lpro1x

use "traina58"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa58"
predict yhat, xb
rename yhat drottmod1x
save "testa58", replace
clear

use "traina58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa58"
predict yhat, xb
rename yhat nortlm1x
save "testa58", replace
clear

* RwandaXd lpro2x

use "traina58"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa58"
predict yhat, xb
rename yhat drottmod2x
save "testa58", replace
clear

use "traina58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa58"
predict yhat, xb
rename yhat nortlm2x
save "testa58", replace
clear

* b58
* RwandaXd lpro12x

use "trainb58"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb58"
predict yhat, xb
rename yhat drottmod12x
save "testb58", replace
clear

use "trainb58"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb58"
predict yhat, xb
rename yhat nortlm12x
save "testb58", replace
clear

* RwandaXd lpro1x

use "trainb58"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb58"
predict yhat, xb
rename yhat drottmod1x
save "testb58", replace
clear

use "trainb58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb58"
predict yhat, xb
rename yhat nortlm1x
save "testb58", replace
clear

* RwandaXd lpro2x

use "trainb58"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb58"
predict yhat, xb
rename yhat drottmod2x
save "testb58", replace
clear

use "trainb58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb58"
predict yhat, xb
rename yhat nortlm2x
save "testb58", replace
clear

* c58
* RwandaXd lpro12x

use "trainc58"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc58"
predict yhat, xb
rename yhat drottmod12x
save "testc58", replace
clear

use "trainc58"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc58"
predict yhat, xb
rename yhat nortlm12x
save "testc58", replace
clear

* RwandaXd lpro1x

use "trainc58"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc58"
predict yhat, xb
rename yhat drottmod1x
save "testc58", replace
clear

use "trainc58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc58"
predict yhat, xb
rename yhat nortlm1x
save "testc58", replace
clear

* RwandaXd lpro2x

use "trainc58"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc58"
predict yhat, xb
rename yhat drottmod2x
save "testc58", replace
clear

use "trainc58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc58"
predict yhat, xb
rename yhat nortlm2x
save "testc58", replace
clear

* d58
* RwandaXd lpro12x

use "traind58"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd58"
predict yhat, xb
rename yhat drottmod12x
save "testd58", replace
clear

use "traind58"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd58"
predict yhat, xb
rename yhat nortlm12x
save "testd58", replace
clear

* RwandaXd lpro1x

use "traind58"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd58"
predict yhat, xb
rename yhat drottmod1x
save "testd58", replace
clear

use "traind58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd58"
predict yhat, xb
rename yhat nortlm1x
save "testd58", replace
clear

* RwandaXd lpro2x

use "traind58"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd58"
predict yhat, xb
rename yhat drottmod2x
save "testd58", replace
clear

use "traind58"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd58"
predict yhat, xb
rename yhat nortlm2x
save "testd58", replace
clear

* a59
* RwandaXd lpro12x

use "traina59"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa59"
predict yhat, xb
rename yhat drottmod12x
save "testa59", replace
clear

use "traina59"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa59"
predict yhat, xb
rename yhat nortlm12x
save "testa59", replace
clear

* RwandaXd lpro1x

use "traina59"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa59"
predict yhat, xb
rename yhat drottmod1x
save "testa59", replace
clear

use "traina59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa59"
predict yhat, xb
rename yhat nortlm1x
save "testa59", replace
clear

* RwandaXd lpro2x

use "traina59"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa59"
predict yhat, xb
rename yhat drottmod2x
save "testa59", replace
clear

use "traina59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa59"
predict yhat, xb
rename yhat nortlm2x
save "testa59", replace
clear

* b59
* RwandaXd lpro12x

use "trainb59"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb59"
predict yhat, xb
rename yhat drottmod12x
save "testb59", replace
clear

use "trainb59"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb59"
predict yhat, xb
rename yhat nortlm12x
save "testb59", replace
clear

* RwandaXd lpro1x

use "trainb59"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb59"
predict yhat, xb
rename yhat drottmod1x
save "testb59", replace
clear

use "trainb59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb59"
predict yhat, xb
rename yhat nortlm1x
save "testb59", replace
clear

* RwandaXd lpro2x

use "trainb59"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb59"
predict yhat, xb
rename yhat drottmod2x
save "testb59", replace
clear

use "trainb59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb59"
predict yhat, xb
rename yhat nortlm2x
save "testb59", replace
clear

* c59
* RwandaXd lpro12x

use "trainc59"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc59"
predict yhat, xb
rename yhat drottmod12x
save "testc59", replace
clear

use "trainc59"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc59"
predict yhat, xb
rename yhat nortlm12x
save "testc59", replace
clear

* RwandaXd lpro1x

use "trainc59"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc59"
predict yhat, xb
rename yhat drottmod1x
save "testc59", replace
clear

use "trainc59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc59"
predict yhat, xb
rename yhat nortlm1x
save "testc59", replace
clear

* RwandaXd lpro2x

use "trainc59"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc59"
predict yhat, xb
rename yhat drottmod2x
save "testc59", replace
clear

use "trainc59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc59"
predict yhat, xb
rename yhat nortlm2x
save "testc59", replace
clear

* d59
* RwandaXd lpro12x

use "traind59"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd59"
predict yhat, xb
rename yhat drottmod12x
save "testd59", replace
clear

use "traind59"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd59"
predict yhat, xb
rename yhat nortlm12x
save "testd59", replace
clear

* RwandaXd lpro1x

use "traind59"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd59"
predict yhat, xb
rename yhat drottmod1x
save "testd59", replace
clear

use "traind59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd59"
predict yhat, xb
rename yhat nortlm1x
save "testd59", replace
clear

* RwandaXd lpro2x

use "traind59"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd59"
predict yhat, xb
rename yhat drottmod2x
save "testd59", replace
clear

use "traind59"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd59"
predict yhat, xb
rename yhat nortlm2x
save "testd59", replace
clear


* a60
* RwandaXd lpro12x

use "traina60"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa60"
predict yhat, xb
rename yhat drottmod12x
save "testa60", replace
clear

use "traina60"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa60"
predict yhat, xb
rename yhat nortlm12x
save "testa60", replace
clear

* RwandaXd lpro1x

use "traina60"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa60"
predict yhat, xb
rename yhat drottmod1x
save "testa60", replace
clear

use "traina60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa60"
predict yhat, xb
rename yhat nortlm1x
save "testa60", replace
clear

* RwandaXd lpro2x

use "traina60"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa60"
predict yhat, xb
rename yhat drottmod2x
save "testa60", replace
clear

use "traina60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa60"
predict yhat, xb
rename yhat nortlm2x
save "testa60", replace
clear

* b60
* RwandaXd lpro12x

use "trainb60"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb60"
predict yhat, xb
rename yhat drottmod12x
save "testb60", replace
clear

use "trainb60"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb60"
predict yhat, xb
rename yhat nortlm12x
save "testb60", replace
clear

* RwandaXd lpro1x

use "trainb60"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb60"
predict yhat, xb
rename yhat drottmod1x
save "testb60", replace
clear

use "trainb60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb60"
predict yhat, xb
rename yhat nortlm1x
save "testb60", replace
clear

* RwandaXd lpro2x

use "trainb60"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb60"
predict yhat, xb
rename yhat drottmod2x
save "testb60", replace
clear

use "trainb60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb60"
predict yhat, xb
rename yhat nortlm2x
save "testb60", replace
clear

* c60
* RwandaXd lpro12x

use "trainc60"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc60"
predict yhat, xb
rename yhat drottmod12x
save "testc60", replace
clear

use "trainc60"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc60"
predict yhat, xb
rename yhat nortlm12x
save "testc60", replace
clear

* RwandaXd lpro1x
use "trainc60"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc60"
predict yhat, xb
rename yhat drottmod1x
save "testc60", replace
clear

use "trainc60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc60"
predict yhat, xb
rename yhat nortlm1x
save "testc60", replace
clear

* RwandaXd lpro2x

use "trainc60"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc60"
predict yhat, xb
rename yhat drottmod2x
save "testc60", replace
clear

use "trainc60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc60"
predict yhat, xb
rename yhat nortlm2x
save "testc60", replace
clear


* d60
* RwandaXd lpro12x

use "traind60"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd60"
predict yhat, xb
rename yhat drottmod12x
save "testd60", replace
clear

use "traind60"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd60"
predict yhat, xb
rename yhat nortlm12x
save "testd60", replace
clear

* RwandaXd lpro1x

use "traind60"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd60"
predict yhat, xb
rename yhat drottmod1x
save "testd60", replace
clear

use "traind60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd60"
predict yhat, xb
rename yhat nortlm1x
save "testd60", replace
clear

* RwandaXd lpro2x

use "traind60"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd60"
predict yhat, xb
rename yhat drottmod2x
save "testd60", replace
clear

use "traind60"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd60"
predict yhat, xb
rename yhat nortlm2x
save "testd60", replace
clear



* a61
* RwandaXd lpro12x

use "traina61"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa61"
predict yhat, xb
rename yhat drottmod12x
save "testa61", replace
clear

use "traina61"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa61"
predict yhat, xb
rename yhat nortlm12x
save "testa61", replace
clear

* RwandaXd lpro1x

use "traina61"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa61"
predict yhat, xb
rename yhat drottmod1x
save "testa61", replace
clear

use "traina61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa61"
predict yhat, xb
rename yhat nortlm1x
save "testa61", replace
clear

* RwandaXd lpro2x

use "traina61"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa61"
predict yhat, xb
rename yhat drottmod2x
save "testa61", replace
clear

use "traina61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa61"
predict yhat, xb
rename yhat nortlm2x
save "testa61", replace
clear

* b61
* RwandaXd lpro12x

use "trainb61"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb61"
predict yhat, xb
rename yhat drottmod12x
save "testb61", replace
clear

use "trainb61"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb61"
predict yhat, xb
rename yhat nortlm12x
save "testb61", replace
clear

* RwandaXd lpro1x

use "trainb61"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb61"
predict yhat, xb
rename yhat drottmod1x
save "testb61", replace
clear

use "trainb61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb61"
predict yhat, xb
rename yhat nortlm1x
save "testb61", replace
clear

* RwandaXd lpro2x

use "trainb61"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb61"
predict yhat, xb
rename yhat drottmod2x
save "testb61", replace
clear

use "trainb61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb61"
predict yhat, xb
rename yhat nortlm2x
save "testb61", replace
clear

* c61
* RwandaXd lpro12x

use "trainc61"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc61"
predict yhat, xb
rename yhat drottmod12x
save "testc61", replace
clear

use "trainc61"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc61"
predict yhat, xb
rename yhat nortlm12x
save "testc61", replace
clear

* RwandaXd lpro1x

use "trainc61"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc61"
predict yhat, xb
rename yhat drottmod1x
save "testc61", replace
clear

use "trainc61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc61"
predict yhat, xb
rename yhat nortlm1x
save "testc61", replace
clear

* RwandaXd lpro2x

use "trainc61"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc61"
predict yhat, xb
rename yhat drottmod2x
save "testc61", replace
clear

use "trainc61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc61"
predict yhat, xb
rename yhat nortlm2x
save "testc61", replace
clear


* d61
* RwandaXd lpro12x

use "traind61"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd61"
predict yhat, xb
rename yhat drottmod12x
save "testd61", replace
clear

use "traind61"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd61"
predict yhat, xb
rename yhat nortlm12x
save "testd61", replace
clear

* RwandaXd lpro1x

use "traind61"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd61"
predict yhat, xb
rename yhat drottmod1x
save "testd61", replace
clear

use "traind61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd61"
predict yhat, xb
rename yhat nortlm1x
save "testd61", replace
clear

* RwandaXd lpro2x

use "traind61"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd61"
predict yhat, xb
rename yhat drottmod2x
save "testd61", replace
clear

use "traind61"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd61"
predict yhat, xb
rename yhat nortlm2x
save "testd61", replace
clear

* a62
* RwandaXd lpro12x

use "traina62"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa62"
predict yhat, xb
rename yhat drottmod12x
save "testa62", replace
clear

use "traina62"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa62"
predict yhat, xb
rename yhat nortlm12x
save "testa62", replace
clear

* RwandaXd lpro1x

use "traina62"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa62"
predict yhat, xb
rename yhat drottmod1x
save "testa62", replace
clear

use "traina62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa62"
predict yhat, xb
rename yhat nortlm1x
save "testa62", replace
clear

* RwandaXd lpro2x

use "traina62"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa62"
predict yhat, xb
rename yhat drottmod2x
save "testa62", replace
clear

use "traina62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa62"
predict yhat, xb
rename yhat nortlm2x
save "testa62", replace
clear

* b62
* RwandaXd lpro12x

use "trainb62"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb62"
predict yhat, xb
rename yhat drottmod12x
save "testb62", replace
clear

use "trainb62"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb62"
predict yhat, xb
rename yhat nortlm12x
save "testb62", replace
clear

* RwandaXd lpro1x

use "trainb62"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb62"
predict yhat, xb
rename yhat drottmod1x
save "testb62", replace
clear

use "trainb62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb62"
predict yhat, xb
rename yhat nortlm1x
save "testb62", replace
clear

* RwandaXd lpro2x

use "trainb62"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb62"
predict yhat, xb
rename yhat drottmod2x
save "testb62", replace
clear

use "trainb62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb62"
predict yhat, xb
rename yhat nortlm2x
save "testb62", replace
clear

* c62
* RwandaXd lpro12x

use "trainc62"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc62"
predict yhat, xb
rename yhat drottmod12x
save "testc62", replace
clear

use "trainc62"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc62"
predict yhat, xb
rename yhat nortlm12x
save "testc62", replace
clear

* RwandaXd lpro1x

use "trainc62"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc62"
predict yhat, xb
rename yhat drottmod1x
save "testc62", replace
clear

use "trainc62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc62"
predict yhat, xb
rename yhat nortlm1x
save "testc62", replace
clear

* RwandaXd lpro2x

use "trainc62"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc62"
predict yhat, xb
rename yhat drottmod2x
save "testc62", replace
clear

use "trainc62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc62"
predict yhat, xb
rename yhat nortlm2x
save "testc62", replace
clear

* d62
* RwandaXd lpro12x

use "traind62"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd62"
predict yhat, xb
rename yhat drottmod12x
save "testd62", replace
clear

use "traind62"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd62"
predict yhat, xb
rename yhat nortlm12x
save "testd62", replace
clear

* RwandaXd lpro1x

use "traind62"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd62"
predict yhat, xb
rename yhat drottmod1x
save "testd62", replace
clear

use "traind62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd62"
predict yhat, xb
rename yhat nortlm1x
save "testd62", replace
clear

* RwandaXd lpro2x

use "traind62"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd62"
predict yhat, xb
rename yhat drottmod2x
save "testd62", replace
clear

use "traind62"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd62"
predict yhat, xb
rename yhat nortlm2x
save "testd62", replace
clear

* a63

* RwandaXd lpro12x

use "traina63"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa63"
predict yhat, xb
rename yhat drottmod12x
save "testa63", replace
clear

use "traina63"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa63"
predict yhat, xb
rename yhat nortlm12x
save "testa63", replace
clear

* RwandaXd lpro1x

use "traina63"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa63"
predict yhat, xb
rename yhat drottmod1x
save "testa63", replace
clear

use "traina63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa63"
predict yhat, xb
rename yhat nortlm1x
save "testa63", replace
clear

* RwandaXd lpro2x

use "traina63"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa63"
predict yhat, xb
rename yhat drottmod2x
save "testa63", replace
clear

use "traina63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa63"
predict yhat, xb
rename yhat nortlm2x
save "testa63", replace
clear

* b63
* RwandaXd lpro12x

use "trainb63"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb63"
predict yhat, xb
rename yhat drottmod12x
save "testb63", replace
clear

use "trainb63"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb63"
predict yhat, xb
rename yhat nortlm12x
save "testb63", replace
clear

* RwandaXd lpro1x

use "trainb63"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb63"
predict yhat, xb
rename yhat drottmod1x
save "testb63", replace
clear

use "trainb63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb63"
predict yhat, xb
rename yhat nortlm1x
save "testb63", replace
clear

* RwandaXd lpro2x

use "trainb63"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb63"
predict yhat, xb
rename yhat drottmod2x
save "testb63", replace
clear

use "trainb63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb63"
predict yhat, xb
rename yhat nortlm2x
save "testb63", replace
clear

* c63
* RwandaXd lpro12x

use "trainc63"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc63"
predict yhat, xb
rename yhat drottmod12x
save "testc63", replace
clear

use "trainc63"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc63"
predict yhat, xb
rename yhat nortlm12x
save "testc63", replace
clear

* RwandaXd lpro1x

use "trainc63"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc63"
predict yhat, xb
rename yhat drottmod1x
save "testc63", replace
clear

use "trainc63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc63"
predict yhat, xb
rename yhat nortlm1x
save "testc63", replace
clear

* RwandaXd lpro2x

use "trainc63"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc63"
predict yhat, xb
rename yhat drottmod2x
save "testc63", replace
clear

use "trainc63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc63"
predict yhat, xb
rename yhat nortlm2x
save "testc63", replace
clear

* d63
* RwandaXd lpro12x

use "traind63"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd63"
predict yhat, xb
rename yhat drottmod12x
save "testd63", replace
clear

use "traind63"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd63"
predict yhat, xb
rename yhat nortlm12x
save "testd63", replace
clear

* RwandaXd lpro1x

use "traind63"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd63"
predict yhat, xb
rename yhat drottmod1x
save "testd63", replace
clear

use "traind63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd63"
predict yhat, xb
rename yhat nortlm1x
save "testd63", replace
clear

* RwandaXd lpro2x

use "traind63"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd63"
predict yhat, xb
rename yhat drottmod2x
save "testd63", replace
clear

use "traind63"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd63"
predict yhat, xb
rename yhat nortlm2x
save "testd63", replace
clear


* a64
* RwandaXd lpro12x

use "traina64"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa64"
predict yhat, xb
rename yhat drottmod12x
save "testa64", replace
clear

use "traina64"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa64"
predict yhat, xb
rename yhat nortlm12x
save "testa64", replace
clear

* RwandaXd lpro1x

use "traina64"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa64"
predict yhat, xb
rename yhat drottmod1x
save "testa64", replace
clear

use "traina64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa64"
predict yhat, xb
rename yhat nortlm1x
save "testa64", replace
clear

* RwandaXd lpro2x

use "traina64"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa64"
predict yhat, xb
rename yhat drottmod2x
save "testa64", replace
clear

use "traina64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa64"
predict yhat, xb
rename yhat nortlm2x
save "testa64", replace
clear

* b64
* RwandaXd lpro12x

use "trainb64"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb64"
predict yhat, xb
rename yhat drottmod12x
save "testb64", replace
clear

use "trainb64"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb64"
predict yhat, xb
rename yhat nortlm12x
save "testb64", replace
clear

* RwandaXd lpro1x

use "trainb64"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb64"
predict yhat, xb
rename yhat drottmod1x
save "testb64", replace
clear

use "trainb64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb64"
predict yhat, xb
rename yhat nortlm1x
save "testb64", replace
clear

* RwandaXd lpro2x

use "trainb64"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb64"
predict yhat, xb
rename yhat drottmod2x
save "testb64", replace
clear

use "trainb64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb64"
predict yhat, xb
rename yhat nortlm2x
save "testb64", replace
clear

* c64
* RwandaXd lpro12x

use "trainc64"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc64"
predict yhat, xb
rename yhat drottmod12x
save "testc64", replace
clear

use "trainc64"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc64"
predict yhat, xb
rename yhat nortlm12x
save "testc64", replace
clear

* RwandaXd lpro1x

use "trainc64"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc64"
predict yhat, xb
rename yhat drottmod1x
save "testc64", replace
clear

use "trainc64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc64"
predict yhat, xb
rename yhat nortlm1x
save "testc64", replace
clear

* RwandaXd lpro2x

use "trainc64"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc64"
predict yhat, xb
rename yhat drottmod2x
save "testc64", replace
clear

use "trainc64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc64"
predict yhat, xb
rename yhat nortlm2x
save "testc64", replace
clear


* d64
* RwandaXd lpro12x

use "traind64"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd64"
predict yhat, xb
rename yhat drottmod12x
save "testd64", replace
clear

use "traind64"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd64"
predict yhat, xb
rename yhat nortlm12x
save "testd64", replace
clear

* RwandaXd lpro1x

use "traind64"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd64"
predict yhat, xb
rename yhat drottmod1x
save "testd64", replace
clear

use "traind64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd64"
predict yhat, xb
rename yhat nortlm1x
save "testd64", replace
clear

* RwandaXd lpro2x

use "traind64"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd64"
predict yhat, xb
rename yhat drottmod2x
save "testd64", replace
clear

use "traind64"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd64"
predict yhat, xb
rename yhat nortlm2x
save "testd64", replace
clear

* a65
* RwandaXd lpro12x

use "traina65"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa65"
predict yhat, xb
rename yhat drottmod12x
save "testa65", replace
clear

use "traina65"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa65"
predict yhat, xb
rename yhat nortlm12x
save "testa65", replace
clear

* RwandaXd lpro1x

use "traina65"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa65"
predict yhat, xb
rename yhat drottmod1x
save "testa65", replace
clear

use "traina65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa65"
predict yhat, xb
rename yhat nortlm1x
save "testa65", replace
clear

* RwandaXd lpro2x

use "traina65"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa65"
predict yhat, xb
rename yhat drottmod2x
save "testa65", replace
clear

use "traina65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa65"
predict yhat, xb
rename yhat nortlm2x
save "testa65", replace
clear

* b65
* RwandaXd lpro12x

use "trainb65"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb65"
predict yhat, xb
rename yhat drottmod12x
save "testb65", replace
clear

use "trainb65"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb65"
predict yhat, xb
rename yhat nortlm12x
save "testb65", replace
clear

* RwandaXd lpro1x

use "trainb65"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb65"
predict yhat, xb
rename yhat drottmod1x
save "testb65", replace
clear

use "trainb65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb65"
predict yhat, xb
rename yhat nortlm1x
save "testb65", replace
clear

* RwandaXd lpro2x

use "trainb65"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb65"
predict yhat, xb
rename yhat drottmod2x
save "testb65", replace

clear
use "trainb65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb65"
predict yhat, xb
rename yhat nortlm2x
save "testb65", replace
clear

* c65
* RwandaXd lpro12x

use "trainc65"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc65"
predict yhat, xb
rename yhat drottmod12x
save "testc65", replace
clear

use "trainc65"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc65"
predict yhat, xb
rename yhat nortlm12x
save "testc65", replace
clear

* RwandaXd lpro1x

use "trainc65"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc65"
predict yhat, xb
rename yhat drottmod1x
save "testc65", replace
clear

use "trainc65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc65"
predict yhat, xb
rename yhat nortlm1x
save "testc65", replace
clear

* RwandaXd lpro2x

use "trainc65"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc65"
predict yhat, xb
rename yhat drottmod2x
save "testc65", replace
clear

use "trainc65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc65"
predict yhat, xb
rename yhat nortlm2x
save "testc65", replace
clear

* d65
* RwandaXd lpro12x

use "traind65"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd65"
predict yhat, xb
rename yhat drottmod12x
save "testd65", replace
clear

use "traind65"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd65"
predict yhat, xb
rename yhat nortlm12x
save "testd65", replace
clear

* RwandaXd lpro1x

use "traind65"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd65"
predict yhat, xb
rename yhat drottmod1x
save "testd65", replace
clear

use "traind65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd65"
predict yhat, xb
rename yhat nortlm1x
save "testd65", replace
clear

* RwandaXd lpro2x

use "traind65"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd65"
predict yhat, xb
rename yhat drottmod2x
save "testd65", replace
clear

use "traind65"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd65"
predict yhat, xb
rename yhat nortlm2x
save "testd65", replace
clear

* a66
* RwandaXd lpro12x

use "traina66"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa66"
predict yhat, xb
rename yhat drottmod12x
save "testa66", replace
clear

use "traina66"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa66"
predict yhat, xb
rename yhat nortlm12x
save "testa66", replace
clear

* RwandaXd lpro1x

use "traina66"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa66"
predict yhat, xb
rename yhat drottmod1x
save "testa66", replace
clear

use "traina66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa66"
predict yhat, xb
rename yhat nortlm1x
save "testa66", replace
clear

* RwandaXd lpro2x

use "traina66"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa66"
predict yhat, xb
rename yhat drottmod2x
save "testa66", replace
clear

use "traina66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa66"
predict yhat, xb
rename yhat nortlm2x
save "testa66", replace
clear

* b66
* RwandaXd lpro12x

use "trainb66"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb66"
predict yhat, xb
rename yhat drottmod12x
save "testb66", replace
clear

use "trainb66"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb66"
predict yhat, xb
rename yhat nortlm12x
save "testb66", replace
clear

* RwandaXd lpro1x

use "trainb66"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb66"
predict yhat, xb
rename yhat drottmod1x
save "testb66", replace
clear

use "trainb66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb66"
predict yhat, xb
rename yhat nortlm1x
save "testb66", replace
clear

* RwandaXd lpro2x

use "trainb66"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb66"
predict yhat, xb
rename yhat drottmod2x
save "testb66", replace
clear

use "trainb66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb66"
predict yhat, xb
rename yhat nortlm2x
save "testb66", replace
clear

* c66
* RwandaXd lpro12x

use "trainc66"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc66"
predict yhat, xb
rename yhat drottmod12x
save "testc66", replace
clear

use "trainc66"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc66"
predict yhat, xb
rename yhat nortlm12x
save "testc66", replace
clear

* RwandaXd lpro1x

use "trainc66"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc66"
predict yhat, xb
rename yhat drottmod1x
save "testc66", replace
clear

use "trainc66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc66"
predict yhat, xb
rename yhat nortlm1x
save "testc66", replace
clear

* RwandaXd lpro2x

use "trainc66"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc66"
predict yhat, xb
rename yhat drottmod2x
save "testc66", replace
clear

use "trainc66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc66"
predict yhat, xb
rename yhat nortlm2x
save "testc66", replace
clear

* d66
* RwandaXd lpro12x

use "traind66"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd66"
predict yhat, xb
rename yhat drottmod12x
save "testd66", replace
clear

use "traind66"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd66"
predict yhat, xb
rename yhat nortlm12x
save "testd66", replace
clear

* RwandaXd lpro1x

use "traind66"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd66"
predict yhat, xb
rename yhat drottmod1x
save "testd66", replace
clear

use "traind66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd66"
predict yhat, xb
rename yhat nortlm1x
save "testd66", replace
clear

* RwandaXd lpro2x

use "traind66"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd66"
predict yhat, xb
rename yhat drottmod2x
save "testd66", replace
clear

use "traind66"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd66"
predict yhat, xb
rename yhat nortlm2x
save "testd66", replace
clear

* a67
* RwandaXd lpro12x

use "traina67"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa67"
predict yhat, xb
rename yhat drottmod12x
save "testa67", replace
clear

use "traina67"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa67"
predict yhat, xb
rename yhat nortlm12x
save "testa67", replace
clear

* RwandaXd lpro1x

use "traina67"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa67"
predict yhat, xb
rename yhat drottmod1x
save "testa67", replace
clear

use "traina67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa67"
predict yhat, xb
rename yhat nortlm1x
save "testa67", replace
clear

* RwandaXd lpro2x

use "traina67"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa67"
predict yhat, xb
rename yhat drottmod2x
save "testa67", replace
clear

use "traina67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa67"
predict yhat, xb
rename yhat nortlm2x
save "testa67", replace
clear

* b67
* RwandaXd lpro12x

use "trainb67"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb67"
predict yhat, xb
rename yhat drottmod12x
save "testb67", replace
clear

use "trainb67"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb67"
predict yhat, xb
rename yhat nortlm12x
save "testb67", replace
clear

* RwandaXd lpro1x

use "trainb67"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb67"
predict yhat, xb
rename yhat drottmod1x
save "testb67", replace
clear

use "trainb67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb67"
predict yhat, xb
rename yhat nortlm1x
save "testb67", replace
clear

* RwandaXd lpro2x

use "trainb67"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb67"
predict yhat, xb
rename yhat drottmod2x
save "testb67", replace
clear

use "trainb67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb67"
predict yhat, xb
rename yhat nortlm2x
save "testb67", replace
clear

* c67
* RwandaXd lpro12x

use "trainc67"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc67"
predict yhat, xb
rename yhat drottmod12x
save "testc67", replace
clear

use "trainc67"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc67"
predict yhat, xb
rename yhat nortlm12x
save "testc67", replace
clear

* RwandaXd lpro1x

use "trainc67"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc67"
predict yhat, xb
rename yhat drottmod1x
save "testc67", replace
clear

use "trainc67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc67"
predict yhat, xb
rename yhat nortlm1x
save "testc67", replace
clear

* RwandaXd lpro2x

use "trainc67"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc67"
predict yhat, xb
rename yhat drottmod2x
save "testc67", replace
clear

use "trainc67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc67"
predict yhat, xb
rename yhat nortlm2x
save "testc67", replace
clear


* d67
* RwandaXd lpro12x

use "traind67"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd67"
predict yhat, xb
rename yhat drottmod12x
save "testd67", replace
clear

use "traind67"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd67"
predict yhat, xb
rename yhat nortlm12x
save "testd67", replace
clear

* RwandaXd lpro1x

use "traind67"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd67"
predict yhat, xb
rename yhat drottmod1x
save "testd67", replace
clear

use "traind67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd67"
predict yhat, xb
rename yhat nortlm1x
save "testd67", replace
clear

* RwandaXd lpro2x

use "traind67"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd67"
predict yhat, xb
rename yhat drottmod2x
save "testd67", replace
clear

use "traind67"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd67"
predict yhat, xb
rename yhat nortlm2x
save "testd67", replace
clear

* a68
* RwandaXd lpro12x

use "traina68"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa68"
predict yhat, xb
rename yhat drottmod12x
save "testa68", replace
clear

use "traina68"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa68"
predict yhat, xb
rename yhat nortlm12x
save "testa68", replace
clear

* RwandaXd lpro1x

use "traina68"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa68"
predict yhat, xb
rename yhat drottmod1x
save "testa68", replace
clear

use "traina68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa68"
predict yhat, xb
rename yhat nortlm1x
save "testa68", replace
clear

* RwandaXd lpro2x

use "traina68"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa68"
predict yhat, xb
rename yhat drottmod2x
save "testa68", replace
clear

use "traina68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa68"
predict yhat, xb
rename yhat nortlm2x
save "testa68", replace
clear

* b68
* RwandaXd lpro12x

use "trainb68"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb68"
predict yhat, xb
rename yhat drottmod12x
save "testb68", replace
clear

use "trainb68"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb68"
predict yhat, xb
rename yhat nortlm12x
save "testb68", replace
clear

* RwandaXd lpro1x

use "trainb68"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb68"
predict yhat, xb
rename yhat drottmod1x
save "testb68", replace
clear

use "trainb68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb68"
predict yhat, xb
rename yhat nortlm1x
save "testb68", replace
clear

* RwandaXd lpro2x

use "trainb68"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb68"
predict yhat, xb
rename yhat drottmod2x
save "testb68", replace
clear

use "trainb68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb68"
predict yhat, xb
rename yhat nortlm2x
save "testb68", replace
clear

* c68
* RwandaXd lpro12x

use "trainc68"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc68"
predict yhat, xb
rename yhat drottmod12x
save "testc68", replace
clear

use "trainc68"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc68"
predict yhat, xb
rename yhat nortlm12x
save "testc68", replace
clear

* RwandaXd lpro1x

use "trainc68"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc68"
predict yhat, xb
rename yhat drottmod1x
save "testc68", replace
clear

use "trainc68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc68"
predict yhat, xb
rename yhat nortlm1x
save "testc68", replace
clear

* RwandaXd lpro2x

use "trainc68"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc68"
predict yhat, xb
rename yhat drottmod2x
save "testc68", replace
clear

use "trainc68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc68"
predict yhat, xb
rename yhat nortlm2x
save "testc68", replace
clear

* d68
* RwandaXd lpro12x

use "traind68"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd68"
predict yhat, xb
rename yhat drottmod12x
save "testd68", replace
clear

use "traind68"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd68"
predict yhat, xb
rename yhat nortlm12x
save "testd68", replace
clear

* RwandaXd lpro1x

use "traind68"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd68"
predict yhat, xb
rename yhat drottmod1x
save "testd68", replace
clear

use "traind68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd68"
predict yhat, xb
rename yhat nortlm1x
save "testd68", replace
clear

* RwandaXd lpro2x

use "traind68"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd68"
predict yhat, xb
rename yhat drottmod2x
save "testd68", replace
clear

use "traind68"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd68"
predict yhat, xb
rename yhat nortlm2x
save "testd68", replace
clear

* a69
* RwandaXd lpro12x

use "traina69"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa69"
predict yhat, xb
rename yhat drottmod12x
save "testa69", replace
clear

use "traina69"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa69"
predict yhat, xb
rename yhat nortlm12x
save "testa69", replace
clear

* RwandaXd lpro1x

use "traina69"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa69"
predict yhat, xb
rename yhat drottmod1x
save "testa69", replace
clear

use "traina69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa69"
predict yhat, xb
rename yhat nortlm1x
save "testa69", replace
clear

* RwandaXd lpro2x

use "traina69"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa69"
predict yhat, xb
rename yhat drottmod2x
save "testa69", replace
clear

use "traina69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa69"
predict yhat, xb
rename yhat nortlm2x
save "testa69", replace
clear

* b69
* RwandaXd lpro12x

use "trainb69"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb69"
predict yhat, xb
rename yhat drottmod12x
save "testb69", replace
clear

use "trainb69"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb69"
predict yhat, xb
rename yhat nortlm12x
save "testb69", replace
clear

* RwandaXd lpro1x

use "trainb69"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb69"
predict yhat, xb
rename yhat drottmod1x
save "testb69", replace
clear

use "trainb69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb69"
predict yhat, xb
rename yhat nortlm1x
save "testb69", replace
clear

* RwandaXd lpro2x

use "trainb69"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb69"
predict yhat, xb
rename yhat drottmod2x
save "testb69", replace
clear

use "trainb69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb69"
predict yhat, xb
rename yhat nortlm2x
save "testb69", replace
clear

* c69
* RwandaXd lpro12x

use "trainc69"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc69"
predict yhat, xb
rename yhat drottmod12x
save "testc69", replace
clear

use "trainc69"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc69"
predict yhat, xb
rename yhat nortlm12x
save "testc69", replace
clear

* RwandaXd lpro1x

use "trainc69"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc69"
predict yhat, xb
rename yhat drottmod1x
save "testc69", replace
clear

use "trainc69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc69"
predict yhat, xb
rename yhat nortlm1x
save "testc69", replace
clear

* RwandaXd lpro2x

use "trainc69"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc69"
predict yhat, xb
rename yhat drottmod2x
save "testc69", replace
clear

use "trainc69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc69"
predict yhat, xb
rename yhat nortlm2x
save "testc69", replace
clear

* d69
* RwandaXd lpro12x

use "traind69"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd69"
predict yhat, xb
rename yhat drottmod12x
save "testd69", replace
clear

use "traind69"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd69"
predict yhat, xb
rename yhat nortlm12x
save "testd69", replace
clear

* RwandaXd lpro1x

use "traind69"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd69"
predict yhat, xb
rename yhat drottmod1x
save "testd69", replace
clear

use "traind69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd69"
predict yhat, xb
rename yhat nortlm1x
save "testd69", replace
clear

* RwandaXd lpro2x

use "traind69"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd69"
predict yhat, xb
rename yhat drottmod2x
save "testd69", replace
clear

use "traind69"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd69"
predict yhat, xb
rename yhat nortlm2x
save "testd69", replace
clear


* a70
* RwandaXd lpro12x

use "traina70"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa70"
predict yhat, xb
rename yhat drottmod12x
save "testa70", replace
clear

use "traina70"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa70"
predict yhat, xb
rename yhat nortlm12x
save "testa70", replace
clear

* RwandaXd lpro1x

use "traina70"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa70"
predict yhat, xb
rename yhat drottmod1x
save "testa70", replace
clear

use "traina70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa70"
predict yhat, xb
rename yhat nortlm1x
save "testa70", replace
clear

* RwandaXd lpro2x

use "traina70"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa70"
predict yhat, xb
rename yhat drottmod2x
save "testa70", replace
clear

use "traina70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa70"
predict yhat, xb
rename yhat nortlm2x
save "testa70", replace
clear

* b70
* RwandaXd lpro12x

use "trainb70"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb70"
predict yhat, xb
rename yhat drottmod12x
save "testb70", replace
clear

use "trainb70"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb70"
predict yhat, xb
rename yhat nortlm12x
save "testb70", replace
clear

* RwandaXd lpro1x

use "trainb70"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb70"
predict yhat, xb
rename yhat drottmod1x
save "testb70", replace
clear

use "trainb70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb70"
predict yhat, xb
rename yhat nortlm1x
save "testb70", replace
clear

* RwandaXd lpro2x

use "trainb70"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb70"
predict yhat, xb
rename yhat drottmod2x
save "testb70", replace
clear

use "trainb70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb70"
predict yhat, xb
rename yhat nortlm2x
save "testb70", replace
clear

* c70
* RwandaXd lpro12x

use "trainc70"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc70"
predict yhat, xb
rename yhat drottmod12x
save "testc70", replace
clear

use "trainc70"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc70"
predict yhat, xb
rename yhat nortlm12x
save "testc70", replace
clear

* RwandaXd lpro1x
use "trainc70"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc70"
predict yhat, xb
rename yhat drottmod1x
save "testc70", replace
clear

use "trainc70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc70"
predict yhat, xb
rename yhat nortlm1x
save "testc70", replace
clear

* RwandaXd lpro2x

use "trainc70"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc70"
predict yhat, xb
rename yhat drottmod2x
save "testc70", replace
clear

use "trainc70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc70"
predict yhat, xb
rename yhat nortlm2x
save "testc70", replace
clear


* d70
* RwandaXd lpro12x

use "traind70"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd70"
predict yhat, xb
rename yhat drottmod12x
save "testd70", replace
clear

use "traind70"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd70"
predict yhat, xb
rename yhat nortlm12x
save "testd70", replace
clear

* RwandaXd lpro1x

use "traind70"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd70"
predict yhat, xb
rename yhat drottmod1x
save "testd70", replace
clear

use "traind70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd70"
predict yhat, xb
rename yhat nortlm1x
save "testd70", replace
clear

* RwandaXd lpro2x

use "traind70"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd70"
predict yhat, xb
rename yhat drottmod2x
save "testd70", replace
clear

use "traind70"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd70"
predict yhat, xb
rename yhat nortlm2x
save "testd70", replace
clear


* a71
* RwandaXd lpro12x

use "traina71"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa71"
predict yhat, xb
rename yhat drottmod12x
save "testa71", replace
clear

use "traina71"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa71"
predict yhat, xb
rename yhat nortlm12x
save "testa71", replace
clear

* RwandaXd lpro1x

use "traina71"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa71"
predict yhat, xb
rename yhat drottmod1x
save "testa71", replace
clear

use "traina71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa71"
predict yhat, xb
rename yhat nortlm1x
save "testa71", replace
clear

* RwandaXd lpro2x

use "traina71"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa71"
predict yhat, xb
rename yhat drottmod2x
save "testa71", replace
clear

use "traina71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa71"
predict yhat, xb
rename yhat nortlm2x
save "testa71", replace
clear

* b71
* RwandaXd lpro12x

use "trainb71"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb71"
predict yhat, xb
rename yhat drottmod12x
save "testb71", replace
clear

use "trainb71"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb71"
predict yhat, xb
rename yhat nortlm12x
save "testb71", replace
clear

* RwandaXd lpro1x

use "trainb71"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb71"
predict yhat, xb
rename yhat drottmod1x
save "testb71", replace
clear

use "trainb71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb71"
predict yhat, xb
rename yhat nortlm1x
save "testb71", replace
clear

* RwandaXd lpro2x

use "trainb71"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb71"
predict yhat, xb
rename yhat drottmod2x
save "testb71", replace
clear

use "trainb71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb71"
predict yhat, xb
rename yhat nortlm2x
save "testb71", replace
clear

* c71
* RwandaXd lpro12x

use "trainc71"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc71"
predict yhat, xb
rename yhat drottmod12x
save "testc71", replace
clear

use "trainc71"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc71"
predict yhat, xb
rename yhat nortlm12x
save "testc71", replace
clear

* RwandaXd lpro1x

use "trainc71"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc71"
predict yhat, xb
rename yhat drottmod1x
save "testc71", replace
clear

use "trainc71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc71"
predict yhat, xb
rename yhat nortlm1x
save "testc71", replace
clear

* RwandaXd lpro2x

use "trainc71"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc71"
predict yhat, xb
rename yhat drottmod2x
save "testc71", replace
clear

use "trainc71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc71"
predict yhat, xb
rename yhat nortlm2x
save "testc71", replace
clear


* d71
* RwandaXd lpro12x

use "traind71"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd71"
predict yhat, xb
rename yhat drottmod12x
save "testd71", replace
clear

use "traind71"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd71"
predict yhat, xb
rename yhat nortlm12x
save "testd71", replace
clear

* RwandaXd lpro1x

use "traind71"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd71"
predict yhat, xb
rename yhat drottmod1x
save "testd71", replace
clear

use "traind71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd71"
predict yhat, xb
rename yhat nortlm1x
save "testd71", replace
clear

* RwandaXd lpro2x

use "traind71"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd71"
predict yhat, xb
rename yhat drottmod2x
save "testd71", replace
clear

use "traind71"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd71"
predict yhat, xb
rename yhat nortlm2x
save "testd71", replace
clear

* a72
* RwandaXd lpro12x

use "traina72"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa72"
predict yhat, xb
rename yhat drottmod12x
save "testa72", replace
clear

use "traina72"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa72"
predict yhat, xb
rename yhat nortlm12x
save "testa72", replace
clear

* RwandaXd lpro1x

use "traina72"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa72"
predict yhat, xb
rename yhat drottmod1x
save "testa72", replace
clear

use "traina72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa72"
predict yhat, xb
rename yhat nortlm1x
save "testa72", replace
clear

* RwandaXd lpro2x

use "traina72"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa72"
predict yhat, xb
rename yhat drottmod2x
save "testa72", replace
clear

use "traina72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa72"
predict yhat, xb
rename yhat nortlm2x
save "testa72", replace
clear

* b72
* RwandaXd lpro12x

use "trainb72"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb72"
predict yhat, xb
rename yhat drottmod12x
save "testb72", replace
clear

use "trainb72"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb72"
predict yhat, xb
rename yhat nortlm12x
save "testb72", replace
clear

* RwandaXd lpro1x

use "trainb72"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb72"
predict yhat, xb
rename yhat drottmod1x
save "testb72", replace
clear

use "trainb72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb72"
predict yhat, xb
rename yhat nortlm1x
save "testb72", replace
clear

* RwandaXd lpro2x

use "trainb72"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb72"
predict yhat, xb
rename yhat drottmod2x
save "testb72", replace
clear

use "trainb72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb72"
predict yhat, xb
rename yhat nortlm2x
save "testb72", replace
clear

* c72
* RwandaXd lpro12x

use "trainc72"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc72"
predict yhat, xb
rename yhat drottmod12x
save "testc72", replace
clear

use "trainc72"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc72"
predict yhat, xb
rename yhat nortlm12x
save "testc72", replace
clear

* RwandaXd lpro1x

use "trainc72"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc72"
predict yhat, xb
rename yhat drottmod1x
save "testc72", replace
clear

use "trainc72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc72"
predict yhat, xb
rename yhat nortlm1x
save "testc72", replace
clear

* RwandaXd lpro2x

use "trainc72"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc72"
predict yhat, xb
rename yhat drottmod2x
save "testc72", replace
clear

use "trainc72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc72"
predict yhat, xb
rename yhat nortlm2x
save "testc72", replace
clear

* d72
* RwandaXd lpro12x

use "traind72"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd72"
predict yhat, xb
rename yhat drottmod12x
save "testd72", replace
clear

use "traind72"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd72"
predict yhat, xb
rename yhat nortlm12x
save "testd72", replace
clear

* RwandaXd lpro1x

use "traind72"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd72"
predict yhat, xb
rename yhat drottmod1x
save "testd72", replace
clear

use "traind72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd72"
predict yhat, xb
rename yhat nortlm1x
save "testd72", replace
clear

* RwandaXd lpro2x

use "traind72"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd72"
predict yhat, xb
rename yhat drottmod2x
save "testd72", replace
clear

use "traind72"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd72"
predict yhat, xb
rename yhat nortlm2x
save "testd72", replace
clear

* a73

* RwandaXd lpro12x

use "traina73"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa73"
predict yhat, xb
rename yhat drottmod12x
save "testa73", replace
clear

use "traina73"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa73"
predict yhat, xb
rename yhat nortlm12x
save "testa73", replace
clear

* RwandaXd lpro1x

use "traina73"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa73"
predict yhat, xb
rename yhat drottmod1x
save "testa73", replace
clear

use "traina73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa73"
predict yhat, xb
rename yhat nortlm1x
save "testa73", replace
clear

* RwandaXd lpro2x

use "traina73"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa73"
predict yhat, xb
rename yhat drottmod2x
save "testa73", replace
clear

use "traina73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa73"
predict yhat, xb
rename yhat nortlm2x
save "testa73", replace
clear

* b73
* RwandaXd lpro12x

use "trainb73"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb73"
predict yhat, xb
rename yhat drottmod12x
save "testb73", replace
clear

use "trainb73"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb73"
predict yhat, xb
rename yhat nortlm12x
save "testb73", replace
clear

* RwandaXd lpro1x

use "trainb73"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb73"
predict yhat, xb
rename yhat drottmod1x
save "testb73", replace
clear

use "trainb73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb73"
predict yhat, xb
rename yhat nortlm1x
save "testb73", replace
clear

* RwandaXd lpro2x

use "trainb73"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb73"
predict yhat, xb
rename yhat drottmod2x
save "testb73", replace
clear

use "trainb73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb73"
predict yhat, xb
rename yhat nortlm2x
save "testb73", replace
clear

* c73
* RwandaXd lpro12x

use "trainc73"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc73"
predict yhat, xb
rename yhat drottmod12x
save "testc73", replace
clear

use "trainc73"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc73"
predict yhat, xb
rename yhat nortlm12x
save "testc73", replace
clear

* RwandaXd lpro1x

use "trainc73"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc73"
predict yhat, xb
rename yhat drottmod1x
save "testc73", replace
clear

use "trainc73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc73"
predict yhat, xb
rename yhat nortlm1x
save "testc73", replace
clear

* RwandaXd lpro2x

use "trainc73"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc73"
predict yhat, xb
rename yhat drottmod2x
save "testc73", replace
clear

use "trainc73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc73"
predict yhat, xb
rename yhat nortlm2x
save "testc73", replace
clear

* d73
* RwandaXd lpro12x

use "traind73"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd73"
predict yhat, xb
rename yhat drottmod12x
save "testd73", replace
clear

use "traind73"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd73"
predict yhat, xb
rename yhat nortlm12x
save "testd73", replace
clear

* RwandaXd lpro1x

use "traind73"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd73"
predict yhat, xb
rename yhat drottmod1x
save "testd73", replace
clear

use "traind73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd73"
predict yhat, xb
rename yhat nortlm1x
save "testd73", replace
clear

* RwandaXd lpro2x

use "traind73"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd73"
predict yhat, xb
rename yhat drottmod2x
save "testd73", replace
clear

use "traind73"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd73"
predict yhat, xb
rename yhat nortlm2x
save "testd73", replace
clear


* a74
* RwandaXd lpro12x

use "traina74"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa74"
predict yhat, xb
rename yhat drottmod12x
save "testa74", replace
clear

use "traina74"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa74"
predict yhat, xb
rename yhat nortlm12x
save "testa74", replace
clear

* RwandaXd lpro1x

use "traina74"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa74"
predict yhat, xb
rename yhat drottmod1x
save "testa74", replace
clear

use "traina74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa74"
predict yhat, xb
rename yhat nortlm1x
save "testa74", replace
clear

* RwandaXd lpro2x

use "traina74"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa74"
predict yhat, xb
rename yhat drottmod2x
save "testa74", replace
clear

use "traina74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa74"
predict yhat, xb
rename yhat nortlm2x
save "testa74", replace
clear

* b74
* RwandaXd lpro12x

use "trainb74"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb74"
predict yhat, xb
rename yhat drottmod12x
save "testb74", replace
clear

use "trainb74"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb74"
predict yhat, xb
rename yhat nortlm12x
save "testb74", replace
clear

* RwandaXd lpro1x

use "trainb74"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb74"
predict yhat, xb
rename yhat drottmod1x
save "testb74", replace
clear

use "trainb74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb74"
predict yhat, xb
rename yhat nortlm1x
save "testb74", replace
clear

* RwandaXd lpro2x

use "trainb74"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb74"
predict yhat, xb
rename yhat drottmod2x
save "testb74", replace
clear

use "trainb74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb74"
predict yhat, xb
rename yhat nortlm2x
save "testb74", replace
clear

* c74
* RwandaXd lpro12x

use "trainc74"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc74"
predict yhat, xb
rename yhat drottmod12x
save "testc74", replace
clear

use "trainc74"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc74"
predict yhat, xb
rename yhat nortlm12x
save "testc74", replace
clear

* RwandaXd lpro1x

use "trainc74"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc74"
predict yhat, xb
rename yhat drottmod1x
save "testc74", replace
clear

use "trainc74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc74"
predict yhat, xb
rename yhat nortlm1x
save "testc74", replace
clear

* RwandaXd lpro2x

use "trainc74"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc74"
predict yhat, xb
rename yhat drottmod2x
save "testc74", replace
clear

use "trainc74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc74"
predict yhat, xb
rename yhat nortlm2x
save "testc74", replace
clear


* d74
* RwandaXd lpro12x

use "traind74"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd74"
predict yhat, xb
rename yhat drottmod12x
save "testd74", replace
clear

use "traind74"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd74"
predict yhat, xb
rename yhat nortlm12x
save "testd74", replace
clear

* RwandaXd lpro1x

use "traind74"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd74"
predict yhat, xb
rename yhat drottmod1x
save "testd74", replace
clear

use "traind74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd74"
predict yhat, xb
rename yhat nortlm1x
save "testd74", replace
clear

* RwandaXd lpro2x

use "traind74"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd74"
predict yhat, xb
rename yhat drottmod2x
save "testd74", replace
clear

use "traind74"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd74"
predict yhat, xb
rename yhat nortlm2x
save "testd74", replace
clear

* a75
* RwandaXd lpro12x

use "traina75"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa75"
predict yhat, xb
rename yhat drottmod12x
save "testa75", replace
clear

use "traina75"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa75"
predict yhat, xb
rename yhat nortlm12x
save "testa75", replace
clear

* RwandaXd lpro1x

use "traina75"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa75"
predict yhat, xb
rename yhat drottmod1x
save "testa75", replace
clear

use "traina75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa75"
predict yhat, xb
rename yhat nortlm1x
save "testa75", replace
clear

* RwandaXd lpro2x

use "traina75"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa75"
predict yhat, xb
rename yhat drottmod2x
save "testa75", replace
clear

use "traina75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa75"
predict yhat, xb
rename yhat nortlm2x
save "testa75", replace
clear

* b75
* RwandaXd lpro12x

use "trainb75"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb75"
predict yhat, xb
rename yhat drottmod12x
save "testb75", replace
clear

use "trainb75"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb75"
predict yhat, xb
rename yhat nortlm12x
save "testb75", replace
clear

* RwandaXd lpro1x

use "trainb75"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb75"
predict yhat, xb
rename yhat drottmod1x
save "testb75", replace
clear

use "trainb75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb75"
predict yhat, xb
rename yhat nortlm1x
save "testb75", replace
clear

* RwandaXd lpro2x

use "trainb75"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb75"
predict yhat, xb
rename yhat drottmod2x
save "testb75", replace

clear
use "trainb75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb75"
predict yhat, xb
rename yhat nortlm2x
save "testb75", replace
clear

* c75
* RwandaXd lpro12x

use "trainc75"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc75"
predict yhat, xb
rename yhat drottmod12x
save "testc75", replace
clear

use "trainc75"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc75"
predict yhat, xb
rename yhat nortlm12x
save "testc75", replace
clear

* RwandaXd lpro1x

use "trainc75"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc75"
predict yhat, xb
rename yhat drottmod1x
save "testc75", replace
clear

use "trainc75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc75"
predict yhat, xb
rename yhat nortlm1x
save "testc75", replace
clear

* RwandaXd lpro2x

use "trainc75"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc75"
predict yhat, xb
rename yhat drottmod2x
save "testc75", replace
clear

use "trainc75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc75"
predict yhat, xb
rename yhat nortlm2x
save "testc75", replace
clear

* d75
* RwandaXd lpro12x

use "traind75"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd75"
predict yhat, xb
rename yhat drottmod12x
save "testd75", replace
clear

use "traind75"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd75"
predict yhat, xb
rename yhat nortlm12x
save "testd75", replace
clear

* RwandaXd lpro1x

use "traind75"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd75"
predict yhat, xb
rename yhat drottmod1x
save "testd75", replace
clear

use "traind75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd75"
predict yhat, xb
rename yhat nortlm1x
save "testd75", replace
clear

* RwandaXd lpro2x

use "traind75"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd75"
predict yhat, xb
rename yhat drottmod2x
save "testd75", replace
clear

use "traind75"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd75"
predict yhat, xb
rename yhat nortlm2x
save "testd75", replace
clear

* a76
* RwandaXd lpro12x

use "traina76"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa76"
predict yhat, xb
rename yhat drottmod12x
save "testa76", replace
clear

use "traina76"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa76"
predict yhat, xb
rename yhat nortlm12x
save "testa76", replace
clear

* RwandaXd lpro1x

use "traina76"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa76"
predict yhat, xb
rename yhat drottmod1x
save "testa76", replace
clear

use "traina76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa76"
predict yhat, xb
rename yhat nortlm1x
save "testa76", replace
clear

* RwandaXd lpro2x

use "traina76"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa76"
predict yhat, xb
rename yhat drottmod2x
save "testa76", replace
clear

use "traina76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa76"
predict yhat, xb
rename yhat nortlm2x
save "testa76", replace
clear

* b76
* RwandaXd lpro12x

use "trainb76"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb76"
predict yhat, xb
rename yhat drottmod12x
save "testb76", replace
clear

use "trainb76"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb76"
predict yhat, xb
rename yhat nortlm12x
save "testb76", replace
clear

* RwandaXd lpro1x

use "trainb76"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb76"
predict yhat, xb
rename yhat drottmod1x
save "testb76", replace
clear

use "trainb76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb76"
predict yhat, xb
rename yhat nortlm1x
save "testb76", replace
clear

* RwandaXd lpro2x

use "trainb76"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb76"
predict yhat, xb
rename yhat drottmod2x
save "testb76", replace
clear

use "trainb76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb76"
predict yhat, xb
rename yhat nortlm2x
save "testb76", replace
clear

* c76
* RwandaXd lpro12x

use "trainc76"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc76"
predict yhat, xb
rename yhat drottmod12x
save "testc76", replace
clear

use "trainc76"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc76"
predict yhat, xb
rename yhat nortlm12x
save "testc76", replace
clear

* RwandaXd lpro1x

use "trainc76"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc76"
predict yhat, xb
rename yhat drottmod1x
save "testc76", replace
clear

use "trainc76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc76"
predict yhat, xb
rename yhat nortlm1x
save "testc76", replace
clear

* RwandaXd lpro2x

use "trainc76"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc76"
predict yhat, xb
rename yhat drottmod2x
save "testc76", replace
clear

use "trainc76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc76"
predict yhat, xb
rename yhat nortlm2x
save "testc76", replace
clear

* d76
* RwandaXd lpro12x

use "traind76"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd76"
predict yhat, xb
rename yhat drottmod12x
save "testd76", replace
clear

use "traind76"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd76"
predict yhat, xb
rename yhat nortlm12x
save "testd76", replace
clear

* RwandaXd lpro1x

use "traind76"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd76"
predict yhat, xb
rename yhat drottmod1x
save "testd76", replace
clear

use "traind76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd76"
predict yhat, xb
rename yhat nortlm1x
save "testd76", replace
clear

* RwandaXd lpro2x

use "traind76"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd76"
predict yhat, xb
rename yhat drottmod2x
save "testd76", replace
clear

use "traind76"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd76"
predict yhat, xb
rename yhat nortlm2x
save "testd76", replace
clear

* a77
* RwandaXd lpro12x

use "traina77"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa77"
predict yhat, xb
rename yhat drottmod12x
save "testa77", replace
clear

use "traina77"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa77"
predict yhat, xb
rename yhat nortlm12x
save "testa77", replace
clear

* RwandaXd lpro1x

use "traina77"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa77"
predict yhat, xb
rename yhat drottmod1x
save "testa77", replace
clear

use "traina77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa77"
predict yhat, xb
rename yhat nortlm1x
save "testa77", replace
clear

* RwandaXd lpro2x

use "traina77"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa77"
predict yhat, xb
rename yhat drottmod2x
save "testa77", replace
clear

use "traina77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa77"
predict yhat, xb
rename yhat nortlm2x
save "testa77", replace
clear

* b77
* RwandaXd lpro12x

use "trainb77"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb77"
predict yhat, xb
rename yhat drottmod12x
save "testb77", replace
clear

use "trainb77"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb77"
predict yhat, xb
rename yhat nortlm12x
save "testb77", replace
clear

* RwandaXd lpro1x

use "trainb77"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb77"
predict yhat, xb
rename yhat drottmod1x
save "testb77", replace
clear

use "trainb77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb77"
predict yhat, xb
rename yhat nortlm1x
save "testb77", replace
clear

* RwandaXd lpro2x

use "trainb77"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb77"
predict yhat, xb
rename yhat drottmod2x
save "testb77", replace
clear

use "trainb77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb77"
predict yhat, xb
rename yhat nortlm2x
save "testb77", replace
clear

* c77
* RwandaXd lpro12x

use "trainc77"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc77"
predict yhat, xb
rename yhat drottmod12x
save "testc77", replace
clear

use "trainc77"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc77"
predict yhat, xb
rename yhat nortlm12x
save "testc77", replace
clear

* RwandaXd lpro1x

use "trainc77"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc77"
predict yhat, xb
rename yhat drottmod1x
save "testc77", replace
clear

use "trainc77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc77"
predict yhat, xb
rename yhat nortlm1x
save "testc77", replace
clear

* RwandaXd lpro2x

use "trainc77"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc77"
predict yhat, xb
rename yhat drottmod2x
save "testc77", replace
clear

use "trainc77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc77"
predict yhat, xb
rename yhat nortlm2x
save "testc77", replace
clear


* d77
* RwandaXd lpro12x

use "traind77"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd77"
predict yhat, xb
rename yhat drottmod12x
save "testd77", replace
clear

use "traind77"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd77"
predict yhat, xb
rename yhat nortlm12x
save "testd77", replace
clear

* RwandaXd lpro1x

use "traind77"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd77"
predict yhat, xb
rename yhat drottmod1x
save "testd77", replace
clear

use "traind77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd77"
predict yhat, xb
rename yhat nortlm1x
save "testd77", replace
clear

* RwandaXd lpro2x

use "traind77"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd77"
predict yhat, xb
rename yhat drottmod2x
save "testd77", replace
clear

use "traind77"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd77"
predict yhat, xb
rename yhat nortlm2x
save "testd77", replace
clear

* a78
* RwandaXd lpro12x

use "traina78"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa78"
predict yhat, xb
rename yhat drottmod12x
save "testa78", replace
clear

use "traina78"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa78"
predict yhat, xb
rename yhat nortlm12x
save "testa78", replace
clear

* RwandaXd lpro1x

use "traina78"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa78"
predict yhat, xb
rename yhat drottmod1x
save "testa78", replace
clear

use "traina78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa78"
predict yhat, xb
rename yhat nortlm1x
save "testa78", replace
clear

* RwandaXd lpro2x

use "traina78"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa78"
predict yhat, xb
rename yhat drottmod2x
save "testa78", replace
clear

use "traina78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa78"
predict yhat, xb
rename yhat nortlm2x
save "testa78", replace
clear

* b78
* RwandaXd lpro12x

use "trainb78"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb78"
predict yhat, xb
rename yhat drottmod12x
save "testb78", replace
clear

use "trainb78"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb78"
predict yhat, xb
rename yhat nortlm12x
save "testb78", replace
clear

* RwandaXd lpro1x

use "trainb78"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb78"
predict yhat, xb
rename yhat drottmod1x
save "testb78", replace
clear

use "trainb78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb78"
predict yhat, xb
rename yhat nortlm1x
save "testb78", replace
clear

* RwandaXd lpro2x

use "trainb78"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb78"
predict yhat, xb
rename yhat drottmod2x
save "testb78", replace
clear

use "trainb78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb78"
predict yhat, xb
rename yhat nortlm2x
save "testb78", replace
clear

* c78
* RwandaXd lpro12x

use "trainc78"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc78"
predict yhat, xb
rename yhat drottmod12x
save "testc78", replace
clear

use "trainc78"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc78"
predict yhat, xb
rename yhat nortlm12x
save "testc78", replace
clear

* RwandaXd lpro1x

use "trainc78"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc78"
predict yhat, xb
rename yhat drottmod1x
save "testc78", replace
clear

use "trainc78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc78"
predict yhat, xb
rename yhat nortlm1x
save "testc78", replace
clear

* RwandaXd lpro2x

use "trainc78"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc78"
predict yhat, xb
rename yhat drottmod2x
save "testc78", replace
clear

use "trainc78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc78"
predict yhat, xb
rename yhat nortlm2x
save "testc78", replace
clear

* d78
* RwandaXd lpro12x

use "traind78"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd78"
predict yhat, xb
rename yhat drottmod12x
save "testd78", replace
clear

use "traind78"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd78"
predict yhat, xb
rename yhat nortlm12x
save "testd78", replace
clear

* RwandaXd lpro1x

use "traind78"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd78"
predict yhat, xb
rename yhat drottmod1x
save "testd78", replace
clear

use "traind78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd78"
predict yhat, xb
rename yhat nortlm1x
save "testd78", replace
clear

* RwandaXd lpro2x

use "traind78"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd78"
predict yhat, xb
rename yhat drottmod2x
save "testd78", replace
clear

use "traind78"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd78"
predict yhat, xb
rename yhat nortlm2x
save "testd78", replace
clear

* a79
* RwandaXd lpro12x

use "traina79"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa79"
predict yhat, xb
rename yhat drottmod12x
save "testa79", replace
clear

use "traina79"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa79"
predict yhat, xb
rename yhat nortlm12x
save "testa79", replace
clear

* RwandaXd lpro1x

use "traina79"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa79"
predict yhat, xb
rename yhat drottmod1x
save "testa79", replace
clear

use "traina79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa79"
predict yhat, xb
rename yhat nortlm1x
save "testa79", replace
clear

* RwandaXd lpro2x

use "traina79"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa79"
predict yhat, xb
rename yhat drottmod2x
save "testa79", replace
clear

use "traina79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa79"
predict yhat, xb
rename yhat nortlm2x
save "testa79", replace
clear

* b79
* RwandaXd lpro12x

use "trainb79"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb79"
predict yhat, xb
rename yhat drottmod12x
save "testb79", replace
clear

use "trainb79"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb79"
predict yhat, xb
rename yhat nortlm12x
save "testb79", replace
clear

* RwandaXd lpro1x

use "trainb79"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb79"
predict yhat, xb
rename yhat drottmod1x
save "testb79", replace
clear

use "trainb79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb79"
predict yhat, xb
rename yhat nortlm1x
save "testb79", replace
clear

* RwandaXd lpro2x

use "trainb79"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb79"
predict yhat, xb
rename yhat drottmod2x
save "testb79", replace
clear

use "trainb79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb79"
predict yhat, xb
rename yhat nortlm2x
save "testb79", replace
clear

* c79
* RwandaXd lpro12x

use "trainc79"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc79"
predict yhat, xb
rename yhat drottmod12x
save "testc79", replace
clear

use "trainc79"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc79"
predict yhat, xb
rename yhat nortlm12x
save "testc79", replace
clear

* RwandaXd lpro1x

use "trainc79"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc79"
predict yhat, xb
rename yhat drottmod1x
save "testc79", replace
clear

use "trainc79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc79"
predict yhat, xb
rename yhat nortlm1x
save "testc79", replace
clear

* RwandaXd lpro2x

use "trainc79"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc79"
predict yhat, xb
rename yhat drottmod2x
save "testc79", replace
clear

use "trainc79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc79"
predict yhat, xb
rename yhat nortlm2x
save "testc79", replace
clear

* d79
* RwandaXd lpro12x

use "traind79"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd79"
predict yhat, xb
rename yhat drottmod12x
save "testd79", replace
clear

use "traind79"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd79"
predict yhat, xb
rename yhat nortlm12x
save "testd79", replace
clear

* RwandaXd lpro1x

use "traind79"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd79"
predict yhat, xb
rename yhat drottmod1x
save "testd79", replace
clear

use "traind79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd79"
predict yhat, xb
rename yhat nortlm1x
save "testd79", replace
clear

* RwandaXd lpro2x

use "traind79"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd79"
predict yhat, xb
rename yhat drottmod2x
save "testd79", replace
clear

use "traind79"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd79"
predict yhat, xb
rename yhat nortlm2x
save "testd79", replace
clear


* a80
* RwandaXd lpro12x

use "traina80"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa80"
predict yhat, xb
rename yhat drottmod12x
save "testa80", replace
clear

use "traina80"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa80"
predict yhat, xb
rename yhat nortlm12x
save "testa80", replace
clear

* RwandaXd lpro1x

use "traina80"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa80"
predict yhat, xb
rename yhat drottmod1x
save "testa80", replace
clear

use "traina80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa80"
predict yhat, xb
rename yhat nortlm1x
save "testa80", replace
clear

* RwandaXd lpro2x

use "traina80"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa80"
predict yhat, xb
rename yhat drottmod2x
save "testa80", replace
clear

use "traina80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa80"
predict yhat, xb
rename yhat nortlm2x
save "testa80", replace
clear

* b80
* RwandaXd lpro12x

use "trainb80"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb80"
predict yhat, xb
rename yhat drottmod12x
save "testb80", replace
clear

use "trainb80"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb80"
predict yhat, xb
rename yhat nortlm12x
save "testb80", replace
clear

* RwandaXd lpro1x

use "trainb80"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb80"
predict yhat, xb
rename yhat drottmod1x
save "testb80", replace
clear

use "trainb80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb80"
predict yhat, xb
rename yhat nortlm1x
save "testb80", replace
clear

* RwandaXd lpro2x

use "trainb80"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb80"
predict yhat, xb
rename yhat drottmod2x
save "testb80", replace
clear

use "trainb80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb80"
predict yhat, xb
rename yhat nortlm2x
save "testb80", replace
clear

* c80
* RwandaXd lpro12x

use "trainc80"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc80"
predict yhat, xb
rename yhat drottmod12x
save "testc80", replace
clear

use "trainc80"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc80"
predict yhat, xb
rename yhat nortlm12x
save "testc80", replace
clear

* RwandaXd lpro1x
use "trainc80"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc80"
predict yhat, xb
rename yhat drottmod1x
save "testc80", replace
clear

use "trainc80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc80"
predict yhat, xb
rename yhat nortlm1x
save "testc80", replace
clear

* RwandaXd lpro2x

use "trainc80"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc80"
predict yhat, xb
rename yhat drottmod2x
save "testc80", replace
clear

use "trainc80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc80"
predict yhat, xb
rename yhat nortlm2x
save "testc80", replace
clear


* d80
* RwandaXd lpro12x

use "traind80"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd80"
predict yhat, xb
rename yhat drottmod12x
save "testd80", replace
clear

use "traind80"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd80"
predict yhat, xb
rename yhat nortlm12x
save "testd80", replace
clear

* RwandaXd lpro1x

use "traind80"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd80"
predict yhat, xb
rename yhat drottmod1x
save "testd80", replace
clear

use "traind80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd80"
predict yhat, xb
rename yhat nortlm1x
save "testd80", replace
clear

* RwandaXd lpro2x

use "traind80"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd80"
predict yhat, xb
rename yhat drottmod2x
save "testd80", replace
clear

use "traind80"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd80"
predict yhat, xb
rename yhat nortlm2x
save "testd80", replace
clear

* a81
* RwandaXd lpro12x

use "traina81"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa81"
predict yhat, xb
rename yhat drottmod12x
save "testa81", replace
clear

use "traina81"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa81"
predict yhat, xb
rename yhat nortlm12x
save "testa81", replace
clear

* RwandaXd lpro1x

use "traina81"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa81"
predict yhat, xb
rename yhat drottmod1x
save "testa81", replace
clear

use "traina81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa81"
predict yhat, xb
rename yhat nortlm1x
save "testa81", replace
clear

* RwandaXd lpro2x

use "traina81"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa81"
predict yhat, xb
rename yhat drottmod2x
save "testa81", replace
clear

use "traina81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa81"
predict yhat, xb
rename yhat nortlm2x
save "testa81", replace
clear

* b81
* RwandaXd lpro12x

use "trainb81"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb81"
predict yhat, xb
rename yhat drottmod12x
save "testb81", replace
clear

use "trainb81"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb81"
predict yhat, xb
rename yhat nortlm12x
save "testb81", replace
clear

* RwandaXd lpro1x

use "trainb81"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb81"
predict yhat, xb
rename yhat drottmod1x
save "testb81", replace
clear

use "trainb81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb81"
predict yhat, xb
rename yhat nortlm1x
save "testb81", replace
clear

* RwandaXd lpro2x

use "trainb81"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb81"
predict yhat, xb
rename yhat drottmod2x
save "testb81", replace
clear

use "trainb81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb81"
predict yhat, xb
rename yhat nortlm2x
save "testb81", replace
clear

* c81
* RwandaXd lpro12x

use "trainc81"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc81"
predict yhat, xb
rename yhat drottmod12x
save "testc81", replace
clear

use "trainc81"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc81"
predict yhat, xb
rename yhat nortlm12x
save "testc81", replace
clear

* RwandaXd lpro1x

use "trainc81"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc81"
predict yhat, xb
rename yhat drottmod1x
save "testc81", replace
clear

use "trainc81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc81"
predict yhat, xb
rename yhat nortlm1x
save "testc81", replace
clear

* RwandaXd lpro2x

use "trainc81"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc81"
predict yhat, xb
rename yhat drottmod2x
save "testc81", replace
clear

use "trainc81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc81"
predict yhat, xb
rename yhat nortlm2x
save "testc81", replace
clear


* d81
* RwandaXd lpro12x

use "traind81"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd81"
predict yhat, xb
rename yhat drottmod12x
save "testd81", replace
clear

use "traind81"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd81"
predict yhat, xb
rename yhat nortlm12x
save "testd81", replace
clear

* RwandaXd lpro1x

use "traind81"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd81"
predict yhat, xb
rename yhat drottmod1x
save "testd81", replace
clear

use "traind81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd81"
predict yhat, xb
rename yhat nortlm1x
save "testd81", replace
clear

* RwandaXd lpro2x

use "traind81"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd81"
predict yhat, xb
rename yhat drottmod2x
save "testd81", replace
clear

use "traind81"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd81"
predict yhat, xb
rename yhat nortlm2x
save "testd81", replace
clear

* a82
* RwandaXd lpro12x

use "traina82"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa82"
predict yhat, xb
rename yhat drottmod12x
save "testa82", replace
clear

use "traina82"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa82"
predict yhat, xb
rename yhat nortlm12x
save "testa82", replace
clear

* RwandaXd lpro1x

use "traina82"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa82"
predict yhat, xb
rename yhat drottmod1x
save "testa82", replace
clear

use "traina82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa82"
predict yhat, xb
rename yhat nortlm1x
save "testa82", replace
clear

* RwandaXd lpro2x

use "traina82"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa82"
predict yhat, xb
rename yhat drottmod2x
save "testa82", replace
clear

use "traina82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa82"
predict yhat, xb
rename yhat nortlm2x
save "testa82", replace
clear

* b82
* RwandaXd lpro12x

use "trainb82"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb82"
predict yhat, xb
rename yhat drottmod12x
save "testb82", replace
clear

use "trainb82"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb82"
predict yhat, xb
rename yhat nortlm12x
save "testb82", replace
clear

* RwandaXd lpro1x

use "trainb82"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb82"
predict yhat, xb
rename yhat drottmod1x
save "testb82", replace
clear

use "trainb82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb82"
predict yhat, xb
rename yhat nortlm1x
save "testb82", replace
clear

* RwandaXd lpro2x

use "trainb82"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb82"
predict yhat, xb
rename yhat drottmod2x
save "testb82", replace
clear

use "trainb82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb82"
predict yhat, xb
rename yhat nortlm2x
save "testb82", replace
clear

* c82
* RwandaXd lpro12x

use "trainc82"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc82"
predict yhat, xb
rename yhat drottmod12x
save "testc82", replace
clear

use "trainc82"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc82"
predict yhat, xb
rename yhat nortlm12x
save "testc82", replace
clear

* RwandaXd lpro1x

use "trainc82"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc82"
predict yhat, xb
rename yhat drottmod1x
save "testc82", replace
clear

use "trainc82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc82"
predict yhat, xb
rename yhat nortlm1x
save "testc82", replace
clear

* RwandaXd lpro2x

use "trainc82"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc82"
predict yhat, xb
rename yhat drottmod2x
save "testc82", replace
clear

use "trainc82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc82"
predict yhat, xb
rename yhat nortlm2x
save "testc82", replace
clear

* d82
* RwandaXd lpro12x

use "traind82"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd82"
predict yhat, xb
rename yhat drottmod12x
save "testd82", replace
clear

use "traind82"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd82"
predict yhat, xb
rename yhat nortlm12x
save "testd82", replace
clear

* RwandaXd lpro1x

use "traind82"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd82"
predict yhat, xb
rename yhat drottmod1x
save "testd82", replace
clear

use "traind82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd82"
predict yhat, xb
rename yhat nortlm1x
save "testd82", replace
clear

* RwandaXd lpro2x

use "traind82"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd82"
predict yhat, xb
rename yhat drottmod2x
save "testd82", replace
clear

use "traind82"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd82"
predict yhat, xb
rename yhat nortlm2x
save "testd82", replace
clear

* a83

* RwandaXd lpro12x

use "traina83"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa83"
predict yhat, xb
rename yhat drottmod12x
save "testa83", replace
clear

use "traina83"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa83"
predict yhat, xb
rename yhat nortlm12x
save "testa83", replace
clear

* RwandaXd lpro1x

use "traina83"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa83"
predict yhat, xb
rename yhat drottmod1x
save "testa83", replace
clear

use "traina83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa83"
predict yhat, xb
rename yhat nortlm1x
save "testa83", replace
clear

* RwandaXd lpro2x

use "traina83"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa83"
predict yhat, xb
rename yhat drottmod2x
save "testa83", replace
clear

use "traina83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa83"
predict yhat, xb
rename yhat nortlm2x
save "testa83", replace
clear

* b83
* RwandaXd lpro12x

use "trainb83"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb83"
predict yhat, xb
rename yhat drottmod12x
save "testb83", replace
clear

use "trainb83"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb83"
predict yhat, xb
rename yhat nortlm12x
save "testb83", replace
clear

* RwandaXd lpro1x

use "trainb83"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb83"
predict yhat, xb
rename yhat drottmod1x
save "testb83", replace
clear

use "trainb83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb83"
predict yhat, xb
rename yhat nortlm1x
save "testb83", replace
clear

* RwandaXd lpro2x

use "trainb83"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb83"
predict yhat, xb
rename yhat drottmod2x
save "testb83", replace
clear

use "trainb83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb83"
predict yhat, xb
rename yhat nortlm2x
save "testb83", replace
clear

* c83
* RwandaXd lpro12x

use "trainc83"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc83"
predict yhat, xb
rename yhat drottmod12x
save "testc83", replace
clear

use "trainc83"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc83"
predict yhat, xb
rename yhat nortlm12x
save "testc83", replace
clear

* RwandaXd lpro1x

use "trainc83"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc83"
predict yhat, xb
rename yhat drottmod1x
save "testc83", replace
clear

use "trainc83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc83"
predict yhat, xb
rename yhat nortlm1x
save "testc83", replace
clear

* RwandaXd lpro2x

use "trainc83"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc83"
predict yhat, xb
rename yhat drottmod2x
save "testc83", replace
clear

use "trainc83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc83"
predict yhat, xb
rename yhat nortlm2x
save "testc83", replace
clear

* d83
* RwandaXd lpro12x

use "traind83"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd83"
predict yhat, xb
rename yhat drottmod12x
save "testd83", replace
clear

use "traind83"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd83"
predict yhat, xb
rename yhat nortlm12x
save "testd83", replace
clear

* RwandaXd lpro1x

use "traind83"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd83"
predict yhat, xb
rename yhat drottmod1x
save "testd83", replace
clear

use "traind83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd83"
predict yhat, xb
rename yhat nortlm1x
save "testd83", replace
clear

* RwandaXd lpro2x

use "traind83"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd83"
predict yhat, xb
rename yhat drottmod2x
save "testd83", replace
clear

use "traind83"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd83"
predict yhat, xb
rename yhat nortlm2x
save "testd83", replace
clear


* a84
* RwandaXd lpro12x

use "traina84"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa84"
predict yhat, xb
rename yhat drottmod12x
save "testa84", replace
clear

use "traina84"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa84"
predict yhat, xb
rename yhat nortlm12x
save "testa84", replace
clear

* RwandaXd lpro1x

use "traina84"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa84"
predict yhat, xb
rename yhat drottmod1x
save "testa84", replace
clear

use "traina84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa84"
predict yhat, xb
rename yhat nortlm1x
save "testa84", replace
clear

* RwandaXd lpro2x

use "traina84"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa84"
predict yhat, xb
rename yhat drottmod2x
save "testa84", replace
clear

use "traina84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa84"
predict yhat, xb
rename yhat nortlm2x
save "testa84", replace
clear

* b84
* RwandaXd lpro12x

use "trainb84"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb84"
predict yhat, xb
rename yhat drottmod12x
save "testb84", replace
clear

use "trainb84"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb84"
predict yhat, xb
rename yhat nortlm12x
save "testb84", replace
clear

* RwandaXd lpro1x

use "trainb84"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb84"
predict yhat, xb
rename yhat drottmod1x
save "testb84", replace
clear

use "trainb84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb84"
predict yhat, xb
rename yhat nortlm1x
save "testb84", replace
clear

* RwandaXd lpro2x

use "trainb84"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb84"
predict yhat, xb
rename yhat drottmod2x
save "testb84", replace
clear

use "trainb84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb84"
predict yhat, xb
rename yhat nortlm2x
save "testb84", replace
clear

* c84
* RwandaXd lpro12x

use "trainc84"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc84"
predict yhat, xb
rename yhat drottmod12x
save "testc84", replace
clear

use "trainc84"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc84"
predict yhat, xb
rename yhat nortlm12x
save "testc84", replace
clear

* RwandaXd lpro1x

use "trainc84"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc84"
predict yhat, xb
rename yhat drottmod1x
save "testc84", replace
clear

use "trainc84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc84"
predict yhat, xb
rename yhat nortlm1x
save "testc84", replace
clear

* RwandaXd lpro2x

use "trainc84"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc84"
predict yhat, xb
rename yhat drottmod2x
save "testc84", replace
clear

use "trainc84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc84"
predict yhat, xb
rename yhat nortlm2x
save "testc84", replace
clear


* d84
* RwandaXd lpro12x

use "traind84"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd84"
predict yhat, xb
rename yhat drottmod12x
save "testd84", replace
clear

use "traind84"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd84"
predict yhat, xb
rename yhat nortlm12x
save "testd84", replace
clear

* RwandaXd lpro1x

use "traind84"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd84"
predict yhat, xb
rename yhat drottmod1x
save "testd84", replace
clear

use "traind84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd84"
predict yhat, xb
rename yhat nortlm1x
save "testd84", replace
clear

* RwandaXd lpro2x

use "traind84"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd84"
predict yhat, xb
rename yhat drottmod2x
save "testd84", replace
clear

use "traind84"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd84"
predict yhat, xb
rename yhat nortlm2x
save "testd84", replace
clear

* a85
* RwandaXd lpro12x

use "traina85"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa85"
predict yhat, xb
rename yhat drottmod12x
save "testa85", replace
clear

use "traina85"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa85"
predict yhat, xb
rename yhat nortlm12x
save "testa85", replace
clear

* RwandaXd lpro1x

use "traina85"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa85"
predict yhat, xb
rename yhat drottmod1x
save "testa85", replace
clear

use "traina85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa85"
predict yhat, xb
rename yhat nortlm1x
save "testa85", replace
clear

* RwandaXd lpro2x

use "traina85"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa85"
predict yhat, xb
rename yhat drottmod2x
save "testa85", replace
clear

use "traina85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa85"
predict yhat, xb
rename yhat nortlm2x
save "testa85", replace
clear

* b85
* RwandaXd lpro12x

use "trainb85"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb85"
predict yhat, xb
rename yhat drottmod12x
save "testb85", replace
clear

use "trainb85"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb85"
predict yhat, xb
rename yhat nortlm12x
save "testb85", replace
clear

* RwandaXd lpro1x

use "trainb85"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb85"
predict yhat, xb
rename yhat drottmod1x
save "testb85", replace
clear

use "trainb85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb85"
predict yhat, xb
rename yhat nortlm1x
save "testb85", replace
clear

* RwandaXd lpro2x

use "trainb85"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb85"
predict yhat, xb
rename yhat drottmod2x
save "testb85", replace

clear
use "trainb85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb85"
predict yhat, xb
rename yhat nortlm2x
save "testb85", replace
clear

* c85
* RwandaXd lpro12x

use "trainc85"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc85"
predict yhat, xb
rename yhat drottmod12x
save "testc85", replace
clear

use "trainc85"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc85"
predict yhat, xb
rename yhat nortlm12x
save "testc85", replace
clear

* RwandaXd lpro1x

use "trainc85"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc85"
predict yhat, xb
rename yhat drottmod1x
save "testc85", replace
clear

use "trainc85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc85"
predict yhat, xb
rename yhat nortlm1x
save "testc85", replace
clear

* RwandaXd lpro2x

use "trainc85"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc85"
predict yhat, xb
rename yhat drottmod2x
save "testc85", replace
clear

use "trainc85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc85"
predict yhat, xb
rename yhat nortlm2x
save "testc85", replace
clear

* d85
* RwandaXd lpro12x

use "traind85"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd85"
predict yhat, xb
rename yhat drottmod12x
save "testd85", replace
clear

use "traind85"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd85"
predict yhat, xb
rename yhat nortlm12x
save "testd85", replace
clear

* RwandaXd lpro1x

use "traind85"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd85"
predict yhat, xb
rename yhat drottmod1x
save "testd85", replace
clear

use "traind85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd85"
predict yhat, xb
rename yhat nortlm1x
save "testd85", replace
clear

* RwandaXd lpro2x

use "traind85"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd85"
predict yhat, xb
rename yhat drottmod2x
save "testd85", replace
clear

use "traind85"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd85"
predict yhat, xb
rename yhat nortlm2x
save "testd85", replace
clear

* a86
* RwandaXd lpro12x

use "traina86"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa86"
predict yhat, xb
rename yhat drottmod12x
save "testa86", replace
clear

use "traina86"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa86"
predict yhat, xb
rename yhat nortlm12x
save "testa86", replace
clear

* RwandaXd lpro1x

use "traina86"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa86"
predict yhat, xb
rename yhat drottmod1x
save "testa86", replace
clear

use "traina86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa86"
predict yhat, xb
rename yhat nortlm1x
save "testa86", replace
clear

* RwandaXd lpro2x

use "traina86"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa86"
predict yhat, xb
rename yhat drottmod2x
save "testa86", replace
clear

use "traina86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa86"
predict yhat, xb
rename yhat nortlm2x
save "testa86", replace
clear

* b86
* RwandaXd lpro12x

use "trainb86"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb86"
predict yhat, xb
rename yhat drottmod12x
save "testb86", replace
clear

use "trainb86"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb86"
predict yhat, xb
rename yhat nortlm12x
save "testb86", replace
clear

* RwandaXd lpro1x

use "trainb86"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb86"
predict yhat, xb
rename yhat drottmod1x
save "testb86", replace
clear

use "trainb86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb86"
predict yhat, xb
rename yhat nortlm1x
save "testb86", replace
clear

* RwandaXd lpro2x

use "trainb86"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb86"
predict yhat, xb
rename yhat drottmod2x
save "testb86", replace
clear

use "trainb86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb86"
predict yhat, xb
rename yhat nortlm2x
save "testb86", replace
clear

* c86
* RwandaXd lpro12x

use "trainc86"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc86"
predict yhat, xb
rename yhat drottmod12x
save "testc86", replace
clear

use "trainc86"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc86"
predict yhat, xb
rename yhat nortlm12x
save "testc86", replace
clear

* RwandaXd lpro1x

use "trainc86"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc86"
predict yhat, xb
rename yhat drottmod1x
save "testc86", replace
clear

use "trainc86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc86"
predict yhat, xb
rename yhat nortlm1x
save "testc86", replace
clear

* RwandaXd lpro2x

use "trainc86"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc86"
predict yhat, xb
rename yhat drottmod2x
save "testc86", replace
clear

use "trainc86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc86"
predict yhat, xb
rename yhat nortlm2x
save "testc86", replace
clear

* d86
* RwandaXd lpro12x

use "traind86"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd86"
predict yhat, xb
rename yhat drottmod12x
save "testd86", replace
clear

use "traind86"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd86"
predict yhat, xb
rename yhat nortlm12x
save "testd86", replace
clear

* RwandaXd lpro1x

use "traind86"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd86"
predict yhat, xb
rename yhat drottmod1x
save "testd86", replace
clear

use "traind86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd86"
predict yhat, xb
rename yhat nortlm1x
save "testd86", replace
clear

* RwandaXd lpro2x

use "traind86"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd86"
predict yhat, xb
rename yhat drottmod2x
save "testd86", replace
clear

use "traind86"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd86"
predict yhat, xb
rename yhat nortlm2x
save "testd86", replace
clear

* a87
* RwandaXd lpro12x

use "traina87"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa87"
predict yhat, xb
rename yhat drottmod12x
save "testa87", replace
clear

use "traina87"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa87"
predict yhat, xb
rename yhat nortlm12x
save "testa87", replace
clear

* RwandaXd lpro1x

use "traina87"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa87"
predict yhat, xb
rename yhat drottmod1x
save "testa87", replace
clear

use "traina87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa87"
predict yhat, xb
rename yhat nortlm1x
save "testa87", replace
clear

* RwandaXd lpro2x

use "traina87"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa87"
predict yhat, xb
rename yhat drottmod2x
save "testa87", replace
clear

use "traina87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa87"
predict yhat, xb
rename yhat nortlm2x
save "testa87", replace
clear

* b87
* RwandaXd lpro12x

use "trainb87"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb87"
predict yhat, xb
rename yhat drottmod12x
save "testb87", replace
clear

use "trainb87"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb87"
predict yhat, xb
rename yhat nortlm12x
save "testb87", replace
clear

* RwandaXd lpro1x

use "trainb87"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb87"
predict yhat, xb
rename yhat drottmod1x
save "testb87", replace
clear

use "trainb87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb87"
predict yhat, xb
rename yhat nortlm1x
save "testb87", replace
clear

* RwandaXd lpro2x

use "trainb87"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb87"
predict yhat, xb
rename yhat drottmod2x
save "testb87", replace
clear

use "trainb87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb87"
predict yhat, xb
rename yhat nortlm2x
save "testb87", replace
clear

* c87
* RwandaXd lpro12x

use "trainc87"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc87"
predict yhat, xb
rename yhat drottmod12x
save "testc87", replace
clear

use "trainc87"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc87"
predict yhat, xb
rename yhat nortlm12x
save "testc87", replace
clear

* RwandaXd lpro1x

use "trainc87"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc87"
predict yhat, xb
rename yhat drottmod1x
save "testc87", replace
clear

use "trainc87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc87"
predict yhat, xb
rename yhat nortlm1x
save "testc87", replace
clear

* RwandaXd lpro2x

use "trainc87"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc87"
predict yhat, xb
rename yhat drottmod2x
save "testc87", replace
clear

use "trainc87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc87"
predict yhat, xb
rename yhat nortlm2x
save "testc87", replace
clear


* d87
* RwandaXd lpro12x

use "traind87"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd87"
predict yhat, xb
rename yhat drottmod12x
save "testd87", replace
clear

use "traind87"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd87"
predict yhat, xb
rename yhat nortlm12x
save "testd87", replace
clear

* RwandaXd lpro1x

use "traind87"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd87"
predict yhat, xb
rename yhat drottmod1x
save "testd87", replace
clear

use "traind87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd87"
predict yhat, xb
rename yhat nortlm1x
save "testd87", replace
clear

* RwandaXd lpro2x

use "traind87"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd87"
predict yhat, xb
rename yhat drottmod2x
save "testd87", replace
clear

use "traind87"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd87"
predict yhat, xb
rename yhat nortlm2x
save "testd87", replace
clear

* a88
* RwandaXd lpro12x

use "traina88"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa88"
predict yhat, xb
rename yhat drottmod12x
save "testa88", replace
clear

use "traina88"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa88"
predict yhat, xb
rename yhat nortlm12x
save "testa88", replace
clear

* RwandaXd lpro1x

use "traina88"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa88"
predict yhat, xb
rename yhat drottmod1x
save "testa88", replace
clear

use "traina88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa88"
predict yhat, xb
rename yhat nortlm1x
save "testa88", replace
clear

* RwandaXd lpro2x

use "traina88"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa88"
predict yhat, xb
rename yhat drottmod2x
save "testa88", replace
clear

use "traina88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa88"
predict yhat, xb
rename yhat nortlm2x
save "testa88", replace
clear

* b88
* RwandaXd lpro12x

use "trainb88"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb88"
predict yhat, xb
rename yhat drottmod12x
save "testb88", replace
clear

use "trainb88"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb88"
predict yhat, xb
rename yhat nortlm12x
save "testb88", replace
clear

* RwandaXd lpro1x

use "trainb88"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb88"
predict yhat, xb
rename yhat drottmod1x
save "testb88", replace
clear

use "trainb88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb88"
predict yhat, xb
rename yhat nortlm1x
save "testb88", replace
clear

* RwandaXd lpro2x

use "trainb88"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb88"
predict yhat, xb
rename yhat drottmod2x
save "testb88", replace
clear

use "trainb88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb88"
predict yhat, xb
rename yhat nortlm2x
save "testb88", replace
clear

* c88
* RwandaXd lpro12x

use "trainc88"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc88"
predict yhat, xb
rename yhat drottmod12x
save "testc88", replace
clear

use "trainc88"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc88"
predict yhat, xb
rename yhat nortlm12x
save "testc88", replace
clear

* RwandaXd lpro1x

use "trainc88"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc88"
predict yhat, xb
rename yhat drottmod1x
save "testc88", replace
clear

use "trainc88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc88"
predict yhat, xb
rename yhat nortlm1x
save "testc88", replace
clear

* RwandaXd lpro2x

use "trainc88"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc88"
predict yhat, xb
rename yhat drottmod2x
save "testc88", replace
clear

use "trainc88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc88"
predict yhat, xb
rename yhat nortlm2x
save "testc88", replace
clear

* d88
* RwandaXd lpro12x

use "traind88"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd88"
predict yhat, xb
rename yhat drottmod12x
save "testd88", replace
clear

use "traind88"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd88"
predict yhat, xb
rename yhat nortlm12x
save "testd88", replace
clear

* RwandaXd lpro1x

use "traind88"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd88"
predict yhat, xb
rename yhat drottmod1x
save "testd88", replace
clear

use "traind88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd88"
predict yhat, xb
rename yhat nortlm1x
save "testd88", replace
clear

* RwandaXd lpro2x

use "traind88"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd88"
predict yhat, xb
rename yhat drottmod2x
save "testd88", replace
clear

use "traind88"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd88"
predict yhat, xb
rename yhat nortlm2x
save "testd88", replace
clear

* a89
* RwandaXd lpro12x

use "traina89"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa89"
predict yhat, xb
rename yhat drottmod12x
save "testa89", replace
clear

use "traina89"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa89"
predict yhat, xb
rename yhat nortlm12x
save "testa89", replace
clear

* RwandaXd lpro1x

use "traina89"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa89"
predict yhat, xb
rename yhat drottmod1x
save "testa89", replace
clear

use "traina89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa89"
predict yhat, xb
rename yhat nortlm1x
save "testa89", replace
clear

* RwandaXd lpro2x

use "traina89"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa89"
predict yhat, xb
rename yhat drottmod2x
save "testa89", replace
clear

use "traina89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa89"
predict yhat, xb
rename yhat nortlm2x
save "testa89", replace
clear

* b89
* RwandaXd lpro12x

use "trainb89"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb89"
predict yhat, xb
rename yhat drottmod12x
save "testb89", replace
clear

use "trainb89"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb89"
predict yhat, xb
rename yhat nortlm12x
save "testb89", replace
clear

* RwandaXd lpro1x

use "trainb89"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb89"
predict yhat, xb
rename yhat drottmod1x
save "testb89", replace
clear

use "trainb89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb89"
predict yhat, xb
rename yhat nortlm1x
save "testb89", replace
clear

* RwandaXd lpro2x

use "trainb89"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb89"
predict yhat, xb
rename yhat drottmod2x
save "testb89", replace
clear

use "trainb89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb89"
predict yhat, xb
rename yhat nortlm2x
save "testb89", replace
clear

* c89
* RwandaXd lpro12x

use "trainc89"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc89"
predict yhat, xb
rename yhat drottmod12x
save "testc89", replace
clear

use "trainc89"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc89"
predict yhat, xb
rename yhat nortlm12x
save "testc89", replace
clear

* RwandaXd lpro1x

use "trainc89"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc89"
predict yhat, xb
rename yhat drottmod1x
save "testc89", replace
clear

use "trainc89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc89"
predict yhat, xb
rename yhat nortlm1x
save "testc89", replace
clear

* RwandaXd lpro2x

use "trainc89"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc89"
predict yhat, xb
rename yhat drottmod2x
save "testc89", replace
clear

use "trainc89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc89"
predict yhat, xb
rename yhat nortlm2x
save "testc89", replace
clear

* d89
* RwandaXd lpro12x

use "traind89"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd89"
predict yhat, xb
rename yhat drottmod12x
save "testd89", replace
clear

use "traind89"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd89"
predict yhat, xb
rename yhat nortlm12x
save "testd89", replace
clear

* RwandaXd lpro1x

use "traind89"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd89"
predict yhat, xb
rename yhat drottmod1x
save "testd89", replace
clear

use "traind89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd89"
predict yhat, xb
rename yhat nortlm1x
save "testd89", replace
clear

* RwandaXd lpro2x

use "traind89"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd89"
predict yhat, xb
rename yhat drottmod2x
save "testd89", replace
clear

use "traind89"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd89"
predict yhat, xb
rename yhat nortlm2x
save "testd89", replace
clear


* a90
* RwandaXd lpro12x

use "traina90"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa90"
predict yhat, xb
rename yhat drottmod12x
save "testa90", replace
clear

use "traina90"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa90"
predict yhat, xb
rename yhat nortlm12x
save "testa90", replace
clear

* RwandaXd lpro1x

use "traina90"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa90"
predict yhat, xb
rename yhat drottmod1x
save "testa90", replace
clear

use "traina90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa90"
predict yhat, xb
rename yhat nortlm1x
save "testa90", replace
clear

* RwandaXd lpro2x

use "traina90"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa90"
predict yhat, xb
rename yhat drottmod2x
save "testa90", replace
clear

use "traina90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa90"
predict yhat, xb
rename yhat nortlm2x
save "testa90", replace
clear

* b90
* RwandaXd lpro12x

use "trainb90"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb90"
predict yhat, xb
rename yhat drottmod12x
save "testb90", replace
clear

use "trainb90"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb90"
predict yhat, xb
rename yhat nortlm12x
save "testb90", replace
clear

* RwandaXd lpro1x

use "trainb90"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb90"
predict yhat, xb
rename yhat drottmod1x
save "testb90", replace
clear

use "trainb90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb90"
predict yhat, xb
rename yhat nortlm1x
save "testb90", replace
clear

* RwandaXd lpro2x

use "trainb90"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb90"
predict yhat, xb
rename yhat drottmod2x
save "testb90", replace
clear

use "trainb90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb90"
predict yhat, xb
rename yhat nortlm2x
save "testb90", replace
clear

* c90
* RwandaXd lpro12x

use "trainc90"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc90"
predict yhat, xb
rename yhat drottmod12x
save "testc90", replace
clear

use "trainc90"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc90"
predict yhat, xb
rename yhat nortlm12x
save "testc90", replace
clear

* RwandaXd lpro1x
use "trainc90"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc90"
predict yhat, xb
rename yhat drottmod1x
save "testc90", replace
clear

use "trainc90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc90"
predict yhat, xb
rename yhat nortlm1x
save "testc90", replace
clear

* RwandaXd lpro2x

use "trainc90"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc90"
predict yhat, xb
rename yhat drottmod2x
save "testc90", replace
clear

use "trainc90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc90"
predict yhat, xb
rename yhat nortlm2x
save "testc90", replace
clear


* d90
* RwandaXd lpro12x

use "traind90"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd90"
predict yhat, xb
rename yhat drottmod12x
save "testd90", replace
clear

use "traind90"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd90"
predict yhat, xb
rename yhat nortlm12x
save "testd90", replace
clear

* RwandaXd lpro1x

use "traind90"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd90"
predict yhat, xb
rename yhat drottmod1x
save "testd90", replace
clear

use "traind90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd90"
predict yhat, xb
rename yhat nortlm1x
save "testd90", replace
clear

* RwandaXd lpro2x

use "traind90"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd90"
predict yhat, xb
rename yhat drottmod2x
save "testd90", replace
clear

use "traind90"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd90"
predict yhat, xb
rename yhat nortlm2x
save "testd90", replace
clear

* a91
* RwandaXd lpro12x

use "traina91"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa91"
predict yhat, xb
rename yhat drottmod12x
save "testa91", replace
clear

use "traina91"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa91"
predict yhat, xb
rename yhat nortlm12x
save "testa91", replace
clear

* RwandaXd lpro1x

use "traina91"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa91"
predict yhat, xb
rename yhat drottmod1x
save "testa91", replace
clear

use "traina91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa91"
predict yhat, xb
rename yhat nortlm1x
save "testa91", replace
clear

* RwandaXd lpro2x

use "traina91"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa91"
predict yhat, xb
rename yhat drottmod2x
save "testa91", replace
clear

use "traina91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa91"
predict yhat, xb
rename yhat nortlm2x
save "testa91", replace
clear

* b91
* RwandaXd lpro12x

use "trainb91"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb91"
predict yhat, xb
rename yhat drottmod12x
save "testb91", replace
clear

use "trainb91"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb91"
predict yhat, xb
rename yhat nortlm12x
save "testb91", replace
clear

* RwandaXd lpro1x

use "trainb91"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb91"
predict yhat, xb
rename yhat drottmod1x
save "testb91", replace
clear

use "trainb91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb91"
predict yhat, xb
rename yhat nortlm1x
save "testb91", replace
clear

* RwandaXd lpro2x

use "trainb91"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb91"
predict yhat, xb
rename yhat drottmod2x
save "testb91", replace
clear

use "trainb91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb91"
predict yhat, xb
rename yhat nortlm2x
save "testb91", replace
clear

* c91
* RwandaXd lpro12x

use "trainc91"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc91"
predict yhat, xb
rename yhat drottmod12x
save "testc91", replace
clear

use "trainc91"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc91"
predict yhat, xb
rename yhat nortlm12x
save "testc91", replace
clear

* RwandaXd lpro1x

use "trainc91"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc91"
predict yhat, xb
rename yhat drottmod1x
save "testc91", replace
clear

use "trainc91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc91"
predict yhat, xb
rename yhat nortlm1x
save "testc91", replace
clear

* RwandaXd lpro2x

use "trainc91"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc91"
predict yhat, xb
rename yhat drottmod2x
save "testc91", replace
clear

use "trainc91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc91"
predict yhat, xb
rename yhat nortlm2x
save "testc91", replace
clear


* d91
* RwandaXd lpro12x

use "traind91"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd91"
predict yhat, xb
rename yhat drottmod12x
save "testd91", replace
clear

use "traind91"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd91"
predict yhat, xb
rename yhat nortlm12x
save "testd91", replace
clear

* RwandaXd lpro1x

use "traind91"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd91"
predict yhat, xb
rename yhat drottmod1x
save "testd91", replace
clear

use "traind91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd91"
predict yhat, xb
rename yhat nortlm1x
save "testd91", replace
clear

* RwandaXd lpro2x

use "traind91"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd91"
predict yhat, xb
rename yhat drottmod2x
save "testd91", replace
clear

use "traind91"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd91"
predict yhat, xb
rename yhat nortlm2x
save "testd91", replace
clear

* a92
* RwandaXd lpro12x

use "traina92"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa92"
predict yhat, xb
rename yhat drottmod12x
save "testa92", replace
clear

use "traina92"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa92"
predict yhat, xb
rename yhat nortlm12x
save "testa92", replace
clear

* RwandaXd lpro1x

use "traina92"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa92"
predict yhat, xb
rename yhat drottmod1x
save "testa92", replace
clear

use "traina92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa92"
predict yhat, xb
rename yhat nortlm1x
save "testa92", replace
clear

* RwandaXd lpro2x

use "traina92"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa92"
predict yhat, xb
rename yhat drottmod2x
save "testa92", replace
clear

use "traina92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa92"
predict yhat, xb
rename yhat nortlm2x
save "testa92", replace
clear

* b92
* RwandaXd lpro12x

use "trainb92"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb92"
predict yhat, xb
rename yhat drottmod12x
save "testb92", replace
clear

use "trainb92"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb92"
predict yhat, xb
rename yhat nortlm12x
save "testb92", replace
clear

* RwandaXd lpro1x

use "trainb92"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb92"
predict yhat, xb
rename yhat drottmod1x
save "testb92", replace
clear

use "trainb92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb92"
predict yhat, xb
rename yhat nortlm1x
save "testb92", replace
clear

* RwandaXd lpro2x

use "trainb92"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb92"
predict yhat, xb
rename yhat drottmod2x
save "testb92", replace
clear

use "trainb92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb92"
predict yhat, xb
rename yhat nortlm2x
save "testb92", replace
clear

* c92
* RwandaXd lpro12x

use "trainc92"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc92"
predict yhat, xb
rename yhat drottmod12x
save "testc92", replace
clear

use "trainc92"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc92"
predict yhat, xb
rename yhat nortlm12x
save "testc92", replace
clear

* RwandaXd lpro1x

use "trainc92"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc92"
predict yhat, xb
rename yhat drottmod1x
save "testc92", replace
clear

use "trainc92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc92"
predict yhat, xb
rename yhat nortlm1x
save "testc92", replace
clear

* RwandaXd lpro2x

use "trainc92"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc92"
predict yhat, xb
rename yhat drottmod2x
save "testc92", replace
clear

use "trainc92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc92"
predict yhat, xb
rename yhat nortlm2x
save "testc92", replace
clear

* d92
* RwandaXd lpro12x

use "traind92"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd92"
predict yhat, xb
rename yhat drottmod12x
save "testd92", replace
clear

use "traind92"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd92"
predict yhat, xb
rename yhat nortlm12x
save "testd92", replace
clear

* RwandaXd lpro1x

use "traind92"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd92"
predict yhat, xb
rename yhat drottmod1x
save "testd92", replace
clear

use "traind92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd92"
predict yhat, xb
rename yhat nortlm1x
save "testd92", replace
clear

* RwandaXd lpro2x

use "traind92"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd92"
predict yhat, xb
rename yhat drottmod2x
save "testd92", replace
clear

use "traind92"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd92"
predict yhat, xb
rename yhat nortlm2x
save "testd92", replace
clear

* a93

* RwandaXd lpro12x

use "traina93"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa93"
predict yhat, xb
rename yhat drottmod12x
save "testa93", replace
clear

use "traina93"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa93"
predict yhat, xb
rename yhat nortlm12x
save "testa93", replace
clear

* RwandaXd lpro1x

use "traina93"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa93"
predict yhat, xb
rename yhat drottmod1x
save "testa93", replace
clear

use "traina93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa93"
predict yhat, xb
rename yhat nortlm1x
save "testa93", replace
clear

* RwandaXd lpro2x

use "traina93"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa93"
predict yhat, xb
rename yhat drottmod2x
save "testa93", replace
clear

use "traina93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa93"
predict yhat, xb
rename yhat nortlm2x
save "testa93", replace
clear

* b93
* RwandaXd lpro12x

use "trainb93"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb93"
predict yhat, xb
rename yhat drottmod12x
save "testb93", replace
clear

use "trainb93"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb93"
predict yhat, xb
rename yhat nortlm12x
save "testb93", replace
clear

* RwandaXd lpro1x

use "trainb93"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb93"
predict yhat, xb
rename yhat drottmod1x
save "testb93", replace
clear

use "trainb93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb93"
predict yhat, xb
rename yhat nortlm1x
save "testb93", replace
clear

* RwandaXd lpro2x

use "trainb93"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb93"
predict yhat, xb
rename yhat drottmod2x
save "testb93", replace
clear

use "trainb93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb93"
predict yhat, xb
rename yhat nortlm2x
save "testb93", replace
clear

* c93
* RwandaXd lpro12x

use "trainc93"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc93"
predict yhat, xb
rename yhat drottmod12x
save "testc93", replace
clear

use "trainc93"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc93"
predict yhat, xb
rename yhat nortlm12x
save "testc93", replace
clear

* RwandaXd lpro1x

use "trainc93"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc93"
predict yhat, xb
rename yhat drottmod1x
save "testc93", replace
clear

use "trainc93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc93"
predict yhat, xb
rename yhat nortlm1x
save "testc93", replace
clear

* RwandaXd lpro2x

use "trainc93"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc93"
predict yhat, xb
rename yhat drottmod2x
save "testc93", replace
clear

use "trainc93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc93"
predict yhat, xb
rename yhat nortlm2x
save "testc93", replace
clear

* d93
* RwandaXd lpro12x

use "traind93"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd93"
predict yhat, xb
rename yhat drottmod12x
save "testd93", replace
clear

use "traind93"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd93"
predict yhat, xb
rename yhat nortlm12x
save "testd93", replace
clear

* RwandaXd lpro1x

use "traind93"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd93"
predict yhat, xb
rename yhat drottmod1x
save "testd93", replace
clear

use "traind93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd93"
predict yhat, xb
rename yhat nortlm1x
save "testd93", replace
clear

* RwandaXd lpro2x

use "traind93"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd93"
predict yhat, xb
rename yhat drottmod2x
save "testd93", replace
clear

use "traind93"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd93"
predict yhat, xb
rename yhat nortlm2x
save "testd93", replace
clear


* a94
* RwandaXd lpro12x

use "traina94"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa94"
predict yhat, xb
rename yhat drottmod12x
save "testa94", replace
clear

use "traina94"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa94"
predict yhat, xb
rename yhat nortlm12x
save "testa94", replace
clear

* RwandaXd lpro1x

use "traina94"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa94"
predict yhat, xb
rename yhat drottmod1x
save "testa94", replace
clear

use "traina94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa94"
predict yhat, xb
rename yhat nortlm1x
save "testa94", replace
clear

* RwandaXd lpro2x

use "traina94"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa94"
predict yhat, xb
rename yhat drottmod2x
save "testa94", replace
clear

use "traina94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa94"
predict yhat, xb
rename yhat nortlm2x
save "testa94", replace
clear

* b94
* RwandaXd lpro12x

use "trainb94"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb94"
predict yhat, xb
rename yhat drottmod12x
save "testb94", replace
clear

use "trainb94"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb94"
predict yhat, xb
rename yhat nortlm12x
save "testb94", replace
clear

* RwandaXd lpro1x

use "trainb94"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb94"
predict yhat, xb
rename yhat drottmod1x
save "testb94", replace
clear

use "trainb94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb94"
predict yhat, xb
rename yhat nortlm1x
save "testb94", replace
clear

* RwandaXd lpro2x

use "trainb94"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb94"
predict yhat, xb
rename yhat drottmod2x
save "testb94", replace
clear

use "trainb94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb94"
predict yhat, xb
rename yhat nortlm2x
save "testb94", replace
clear

* c94
* RwandaXd lpro12x

use "trainc94"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc94"
predict yhat, xb
rename yhat drottmod12x
save "testc94", replace
clear

use "trainc94"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc94"
predict yhat, xb
rename yhat nortlm12x
save "testc94", replace
clear

* RwandaXd lpro1x

use "trainc94"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc94"
predict yhat, xb
rename yhat drottmod1x
save "testc94", replace
clear

use "trainc94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc94"
predict yhat, xb
rename yhat nortlm1x
save "testc94", replace
clear

* RwandaXd lpro2x

use "trainc94"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc94"
predict yhat, xb
rename yhat drottmod2x
save "testc94", replace
clear

use "trainc94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc94"
predict yhat, xb
rename yhat nortlm2x
save "testc94", replace
clear


* d94
* RwandaXd lpro12x

use "traind94"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd94"
predict yhat, xb
rename yhat drottmod12x
save "testd94", replace
clear

use "traind94"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd94"
predict yhat, xb
rename yhat nortlm12x
save "testd94", replace
clear

* RwandaXd lpro1x

use "traind94"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd94"
predict yhat, xb
rename yhat drottmod1x
save "testd94", replace
clear

use "traind94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd94"
predict yhat, xb
rename yhat nortlm1x
save "testd94", replace
clear

* RwandaXd lpro2x

use "traind94"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd94"
predict yhat, xb
rename yhat drottmod2x
save "testd94", replace
clear

use "traind94"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd94"
predict yhat, xb
rename yhat nortlm2x
save "testd94", replace
clear

* a95
* RwandaXd lpro12x

use "traina95"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa95"
predict yhat, xb
rename yhat drottmod12x
save "testa95", replace
clear

use "traina95"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa95"
predict yhat, xb
rename yhat nortlm12x
save "testa95", replace
clear

* RwandaXd lpro1x

use "traina95"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa95"
predict yhat, xb
rename yhat drottmod1x
save "testa95", replace
clear

use "traina95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa95"
predict yhat, xb
rename yhat nortlm1x
save "testa95", replace
clear

* RwandaXd lpro2x

use "traina95"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa95"
predict yhat, xb
rename yhat drottmod2x
save "testa95", replace
clear

use "traina95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa95"
predict yhat, xb
rename yhat nortlm2x
save "testa95", replace
clear

* b95
* RwandaXd lpro12x

use "trainb95"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb95"
predict yhat, xb
rename yhat drottmod12x
save "testb95", replace
clear

use "trainb95"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb95"
predict yhat, xb
rename yhat nortlm12x
save "testb95", replace
clear

* RwandaXd lpro1x

use "trainb95"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb95"
predict yhat, xb
rename yhat drottmod1x
save "testb95", replace
clear

use "trainb95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb95"
predict yhat, xb
rename yhat nortlm1x
save "testb95", replace
clear

* RwandaXd lpro2x

use "trainb95"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb95"
predict yhat, xb
rename yhat drottmod2x
save "testb95", replace

clear
use "trainb95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb95"
predict yhat, xb
rename yhat nortlm2x
save "testb95", replace
clear

* c95
* RwandaXd lpro12x

use "trainc95"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc95"
predict yhat, xb
rename yhat drottmod12x
save "testc95", replace
clear

use "trainc95"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc95"
predict yhat, xb
rename yhat nortlm12x
save "testc95", replace
clear

* RwandaXd lpro1x

use "trainc95"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc95"
predict yhat, xb
rename yhat drottmod1x
save "testc95", replace
clear

use "trainc95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc95"
predict yhat, xb
rename yhat nortlm1x
save "testc95", replace
clear

* RwandaXd lpro2x

use "trainc95"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc95"
predict yhat, xb
rename yhat drottmod2x
save "testc95", replace
clear

use "trainc95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc95"
predict yhat, xb
rename yhat nortlm2x
save "testc95", replace
clear

* d95
* RwandaXd lpro12x

use "traind95"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd95"
predict yhat, xb
rename yhat drottmod12x
save "testd95", replace
clear

use "traind95"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd95"
predict yhat, xb
rename yhat nortlm12x
save "testd95", replace
clear

* RwandaXd lpro1x

use "traind95"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd95"
predict yhat, xb
rename yhat drottmod1x
save "testd95", replace
clear

use "traind95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd95"
predict yhat, xb
rename yhat nortlm1x
save "testd95", replace
clear

* RwandaXd lpro2x

use "traind95"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd95"
predict yhat, xb
rename yhat drottmod2x
save "testd95", replace
clear

use "traind95"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd95"
predict yhat, xb
rename yhat nortlm2x
save "testd95", replace
clear

* a96
* RwandaXd lpro12x

use "traina96"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa96"
predict yhat, xb
rename yhat drottmod12x
save "testa96", replace
clear

use "traina96"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa96"
predict yhat, xb
rename yhat nortlm12x
save "testa96", replace
clear

* RwandaXd lpro1x

use "traina96"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa96"
predict yhat, xb
rename yhat drottmod1x
save "testa96", replace
clear

use "traina96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa96"
predict yhat, xb
rename yhat nortlm1x
save "testa96", replace
clear

* RwandaXd lpro2x

use "traina96"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa96"
predict yhat, xb
rename yhat drottmod2x
save "testa96", replace
clear

use "traina96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa96"
predict yhat, xb
rename yhat nortlm2x
save "testa96", replace
clear

* b96
* RwandaXd lpro12x

use "trainb96"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb96"
predict yhat, xb
rename yhat drottmod12x
save "testb96", replace
clear

use "trainb96"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb96"
predict yhat, xb
rename yhat nortlm12x
save "testb96", replace
clear

* RwandaXd lpro1x

use "trainb96"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb96"
predict yhat, xb
rename yhat drottmod1x
save "testb96", replace
clear

use "trainb96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb96"
predict yhat, xb
rename yhat nortlm1x
save "testb96", replace
clear

* RwandaXd lpro2x

use "trainb96"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb96"
predict yhat, xb
rename yhat drottmod2x
save "testb96", replace
clear

use "trainb96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb96"
predict yhat, xb
rename yhat nortlm2x
save "testb96", replace
clear

* c96
* RwandaXd lpro12x

use "trainc96"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc96"
predict yhat, xb
rename yhat drottmod12x
save "testc96", replace
clear

use "trainc96"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc96"
predict yhat, xb
rename yhat nortlm12x
save "testc96", replace
clear

* RwandaXd lpro1x

use "trainc96"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc96"
predict yhat, xb
rename yhat drottmod1x
save "testc96", replace
clear

use "trainc96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc96"
predict yhat, xb
rename yhat nortlm1x
save "testc96", replace
clear

* RwandaXd lpro2x

use "trainc96"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc96"
predict yhat, xb
rename yhat drottmod2x
save "testc96", replace
clear

use "trainc96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc96"
predict yhat, xb
rename yhat nortlm2x
save "testc96", replace
clear

* d96
* RwandaXd lpro12x

use "traind96"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd96"
predict yhat, xb
rename yhat drottmod12x
save "testd96", replace
clear

use "traind96"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd96"
predict yhat, xb
rename yhat nortlm12x
save "testd96", replace
clear

* RwandaXd lpro1x

use "traind96"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd96"
predict yhat, xb
rename yhat drottmod1x
save "testd96", replace
clear

use "traind96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd96"
predict yhat, xb
rename yhat nortlm1x
save "testd96", replace
clear

* RwandaXd lpro2x

use "traind96"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd96"
predict yhat, xb
rename yhat drottmod2x
save "testd96", replace
clear

use "traind96"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd96"
predict yhat, xb
rename yhat nortlm2x
save "testd96", replace
clear

* a97
* RwandaXd lpro12x

use "traina97"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa97"
predict yhat, xb
rename yhat drottmod12x
save "testa97", replace
clear

use "traina97"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa97"
predict yhat, xb
rename yhat nortlm12x
save "testa97", replace
clear

* RwandaXd lpro1x

use "traina97"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa97"
predict yhat, xb
rename yhat drottmod1x
save "testa97", replace
clear

use "traina97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa97"
predict yhat, xb
rename yhat nortlm1x
save "testa97", replace
clear

* RwandaXd lpro2x

use "traina97"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa97"
predict yhat, xb
rename yhat drottmod2x
save "testa97", replace
clear

use "traina97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa97"
predict yhat, xb
rename yhat nortlm2x
save "testa97", replace
clear

* b97
* RwandaXd lpro12x

use "trainb97"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb97"
predict yhat, xb
rename yhat drottmod12x
save "testb97", replace
clear

use "trainb97"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb97"
predict yhat, xb
rename yhat nortlm12x
save "testb97", replace
clear

* RwandaXd lpro1x

use "trainb97"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb97"
predict yhat, xb
rename yhat drottmod1x
save "testb97", replace
clear

use "trainb97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb97"
predict yhat, xb
rename yhat nortlm1x
save "testb97", replace
clear

* RwandaXd lpro2x

use "trainb97"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb97"
predict yhat, xb
rename yhat drottmod2x
save "testb97", replace
clear

use "trainb97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb97"
predict yhat, xb
rename yhat nortlm2x
save "testb97", replace
clear

* c97
* RwandaXd lpro12x

use "trainc97"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc97"
predict yhat, xb
rename yhat drottmod12x
save "testc97", replace
clear

use "trainc97"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc97"
predict yhat, xb
rename yhat nortlm12x
save "testc97", replace
clear

* RwandaXd lpro1x

use "trainc97"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc97"
predict yhat, xb
rename yhat drottmod1x
save "testc97", replace
clear

use "trainc97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc97"
predict yhat, xb
rename yhat nortlm1x
save "testc97", replace
clear

* RwandaXd lpro2x

use "trainc97"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc97"
predict yhat, xb
rename yhat drottmod2x
save "testc97", replace
clear

use "trainc97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc97"
predict yhat, xb
rename yhat nortlm2x
save "testc97", replace
clear


* d97
* RwandaXd lpro12x

use "traind97"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd97"
predict yhat, xb
rename yhat drottmod12x
save "testd97", replace
clear

use "traind97"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd97"
predict yhat, xb
rename yhat nortlm12x
save "testd97", replace
clear

* RwandaXd lpro1x

use "traind97"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd97"
predict yhat, xb
rename yhat drottmod1x
save "testd97", replace
clear

use "traind97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd97"
predict yhat, xb
rename yhat nortlm1x
save "testd97", replace
clear

* RwandaXd lpro2x

use "traind97"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd97"
predict yhat, xb
rename yhat drottmod2x
save "testd97", replace
clear

use "traind97"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd97"
predict yhat, xb
rename yhat nortlm2x
save "testd97", replace
clear

* a98
* RwandaXd lpro12x

use "traina98"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa98"
predict yhat, xb
rename yhat drottmod12x
save "testa98", replace
clear

use "traina98"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa98"
predict yhat, xb
rename yhat nortlm12x
save "testa98", replace
clear

* RwandaXd lpro1x

use "traina98"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa98"
predict yhat, xb
rename yhat drottmod1x
save "testa98", replace
clear

use "traina98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa98"
predict yhat, xb
rename yhat nortlm1x
save "testa98", replace
clear

* RwandaXd lpro2x

use "traina98"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa98"
predict yhat, xb
rename yhat drottmod2x
save "testa98", replace
clear

use "traina98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa98"
predict yhat, xb
rename yhat nortlm2x
save "testa98", replace
clear

* b98
* RwandaXd lpro12x

use "trainb98"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb98"
predict yhat, xb
rename yhat drottmod12x
save "testb98", replace
clear

use "trainb98"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb98"
predict yhat, xb
rename yhat nortlm12x
save "testb98", replace
clear

* RwandaXd lpro1x

use "trainb98"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb98"
predict yhat, xb
rename yhat drottmod1x
save "testb98", replace
clear

use "trainb98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb98"
predict yhat, xb
rename yhat nortlm1x
save "testb98", replace
clear

* RwandaXd lpro2x

use "trainb98"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb98"
predict yhat, xb
rename yhat drottmod2x
save "testb98", replace
clear

use "trainb98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb98"
predict yhat, xb
rename yhat nortlm2x
save "testb98", replace
clear

* c98
* RwandaXd lpro12x

use "trainc98"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc98"
predict yhat, xb
rename yhat drottmod12x
save "testc98", replace
clear

use "trainc98"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc98"
predict yhat, xb
rename yhat nortlm12x
save "testc98", replace
clear

* RwandaXd lpro1x

use "trainc98"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc98"
predict yhat, xb
rename yhat drottmod1x
save "testc98", replace
clear

use "trainc98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc98"
predict yhat, xb
rename yhat nortlm1x
save "testc98", replace
clear

* RwandaXd lpro2x

use "trainc98"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc98"
predict yhat, xb
rename yhat drottmod2x
save "testc98", replace
clear

use "trainc98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc98"
predict yhat, xb
rename yhat nortlm2x
save "testc98", replace
clear

* d98
* RwandaXd lpro12x

use "traind98"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd98"
predict yhat, xb
rename yhat drottmod12x
save "testd98", replace
clear

use "traind98"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd98"
predict yhat, xb
rename yhat nortlm12x
save "testd98", replace
clear

* RwandaXd lpro1x

use "traind98"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd98"
predict yhat, xb
rename yhat drottmod1x
save "testd98", replace
clear

use "traind98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd98"
predict yhat, xb
rename yhat nortlm1x
save "testd98", replace
clear

* RwandaXd lpro2x

use "traind98"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd98"
predict yhat, xb
rename yhat drottmod2x
save "testd98", replace
clear

use "traind98"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd98"
predict yhat, xb
rename yhat nortlm2x
save "testd98", replace
clear

* a99
* RwandaXd lpro12x

use "traina99"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa99"
predict yhat, xb
rename yhat drottmod12x
save "testa99", replace
clear

use "traina99"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa99"
predict yhat, xb
rename yhat nortlm12x
save "testa99", replace
clear

* RwandaXd lpro1x

use "traina99"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa99"
predict yhat, xb
rename yhat drottmod1x
save "testa99", replace
clear

use "traina99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa99"
predict yhat, xb
rename yhat nortlm1x
save "testa99", replace
clear

* RwandaXd lpro2x

use "traina99"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa99"
predict yhat, xb
rename yhat drottmod2x
save "testa99", replace
clear

use "traina99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa99"
predict yhat, xb
rename yhat nortlm2x
save "testa99", replace
clear

* b99
* RwandaXd lpro12x

use "trainb99"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb99"
predict yhat, xb
rename yhat drottmod12x
save "testb99", replace
clear

use "trainb99"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb99"
predict yhat, xb
rename yhat nortlm12x
save "testb99", replace
clear

* RwandaXd lpro1x

use "trainb99"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb99"
predict yhat, xb
rename yhat drottmod1x
save "testb99", replace
clear

use "trainb99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb99"
predict yhat, xb
rename yhat nortlm1x
save "testb99", replace
clear

* RwandaXd lpro2x

use "trainb99"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb99"
predict yhat, xb
rename yhat drottmod2x
save "testb99", replace
clear

use "trainb99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb99"
predict yhat, xb
rename yhat nortlm2x
save "testb99", replace
clear

* c99
* RwandaXd lpro12x

use "trainc99"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc99"
predict yhat, xb
rename yhat drottmod12x
save "testc99", replace
clear

use "trainc99"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc99"
predict yhat, xb
rename yhat nortlm12x
save "testc99", replace
clear

* RwandaXd lpro1x

use "trainc99"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc99"
predict yhat, xb
rename yhat drottmod1x
save "testc99", replace
clear

use "trainc99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc99"
predict yhat, xb
rename yhat nortlm1x
save "testc99", replace
clear

* RwandaXd lpro2x

use "trainc99"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc99"
predict yhat, xb
rename yhat drottmod2x
save "testc99", replace
clear

use "trainc99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc99"
predict yhat, xb
rename yhat nortlm2x
save "testc99", replace
clear

* d99
* RwandaXd lpro12x

use "traind99"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd99"
predict yhat, xb
rename yhat drottmod12x
save "testd99", replace
clear

use "traind99"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd99"
predict yhat, xb
rename yhat nortlm12x
save "testd99", replace
clear

* RwandaXd lpro1x

use "traind99"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd99"
predict yhat, xb
rename yhat drottmod1x
save "testd99", replace
clear

use "traind99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd99"
predict yhat, xb
rename yhat nortlm1x
save "testd99", replace
clear

* RwandaXd lpro2x

use "traind99"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd99"
predict yhat, xb
rename yhat drottmod2x
save "testd99", replace
clear

use "traind99"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd99"
predict yhat, xb
rename yhat nortlm2x
save "testd99", replace
clear


* a100
* RwandaXd lpro12x

use "traina100"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa100"
predict yhat, xb
rename yhat drottmod12x
save "testa100", replace
clear

use "traina100"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa100"
predict yhat, xb
rename yhat nortlm12x
save "testa100", replace
clear

* RwandaXd lpro1x

use "traina100"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa100"
predict yhat, xb
rename yhat drottmod1x
save "testa100", replace
clear

use "traina100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa100"
predict yhat, xb
rename yhat nortlm1x
save "testa100", replace
clear

* RwandaXd lpro2x

use "traina100"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa100"
predict yhat, xb
rename yhat drottmod2x
save "testa100", replace
clear

use "traina100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testa100"
predict yhat, xb
rename yhat nortlm2x
save "testa100", replace
clear

* b100
* RwandaXd lpro12x

use "trainb100"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb100"
predict yhat, xb
rename yhat drottmod12x
save "testb100", replace
clear

use "trainb100"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb100"
predict yhat, xb
rename yhat nortlm12x
save "testb100", replace
clear

* RwandaXd lpro1x

use "trainb100"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb100"
predict yhat, xb
rename yhat drottmod1x
save "testb100", replace
clear

use "trainb100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb100"
predict yhat, xb
rename yhat nortlm1x
save "testb100", replace
clear

* RwandaXd lpro2x

use "trainb100"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb100"
predict yhat, xb
rename yhat drottmod2x
save "testb100", replace
clear

use "trainb100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testb100"
predict yhat, xb
rename yhat nortlm2x
save "testb100", replace
clear

* c100
* RwandaXd lpro12x

use "trainc100"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc100"
predict yhat, xb
rename yhat drottmod12x
save "testc100", replace
clear

use "trainc100"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc100"
predict yhat, xb
rename yhat nortlm12x
save "testc100", replace
clear

* RwandaXd lpro1x
use "trainc100"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc100"
predict yhat, xb
rename yhat drottmod1x
save "testc100", replace
clear

use "trainc100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc100"
predict yhat, xb
rename yhat nortlm1x
save "testc100", replace
clear

* RwandaXd lpro2x

use "trainc100"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc100"
predict yhat, xb
rename yhat drottmod2x
save "testc100", replace
clear

use "trainc100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testc100"
predict yhat, xb
rename yhat nortlm2x
save "testc100", replace
clear


* d100
* RwandaXd lpro12x

use "traind100"
areg lpro12x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd100"
predict yhat, xb
rename yhat drottmod12x
save "testd100", replace
clear

use "traind100"
areg lpro12x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd100"
predict yhat, xb
rename yhat nortlm12x
save "testd100", replace
clear

* RwandaXd lpro1x

use "traind100"
areg lpro1x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd100"
predict yhat, xb
rename yhat drottmod1x
save "testd100", replace
clear

use "traind100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd100"
predict yhat, xb
rename yhat nortlm1x
save "testd100", replace
clear

* RwandaXd lpro2x

use "traind100"
areg lpro2x rtlm alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd100"
predict yhat, xb
rename yhat drottmod2x
save "testd100", replace
clear

use "traind100"
areg lpro1x alt_mean alt_mean_sq2 alt_var alt_var_sq distance distance_sq lat lon lpop lpop_dens ltowns_mean lroads_mean lborder_mean facing_E facing_N facing_S, a(commune) cl(district)
clear

use "testd100"
predict yhat, xb
rename yhat nortlm2x
save "testd100", replace
clear











