cd "/Users/alexandraion/Downloads/coding_for_econ_stata"

* Download data
copy "https://osf.io/download/g5dmw/" "final/viennahotels.csv", replace

*Load data


import delimited "final/viennahotels.csv", clear

* Go through the data

browse

summ price, detail
summ starrating, detail 
summ guestreview, detail

* Only keep relevant variables


keep price starrating guestreview

drop if guestreview == "NA"

* Make guestreview variable ready for analysis
gen guestreview_clean = regexr(guestreview, "/5", "")




