browse

* Data visualisation

* Distribution of price
hist price
graph export "Price of Hotels.png"

* Distribution of star rating
hist starrating
graph export "Hotels Stars.png"

* Distribution of the guest reviews
* Need to change this variable from string to intig to to a histogram:

destring guestreview_clean, generate(guestreview_str)
hist guestreview_str
graph export "Reviews from Guests.png"


* Scatter plot of price and the star rating and the two ratings toghter

scatter price starrating

scatter starrating guestreview_str

