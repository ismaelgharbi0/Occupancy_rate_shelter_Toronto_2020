#### Preamble ####
# Purpose: Simulates the shelter occupancy daily in 2020 in Toronto
# Author: Ismael Gharbi 
# Date: 23 January 2023 
# Contact: ismael.gharbi@mail.utoronto.ca 
# License: MIT
# Pre-requisites: 



#### Workspace setup ####


#### Simulate data ####
set.seed(500)

# set up the year quarters 
months <- rep(c("January","February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))
year <- 2022


simulated_data <- tibble(
  Month = paste(months, year, sep = " "),
  Shelter_Occupancy = round(runif(100, 20000, 80000)),
  
)

simulated_data


# Tests to verify correctness and ensure reproducibility.


# First test ensures that there are twelve months in a year.

unique_month <- unique(simulated_data$Month)


yr_per_month <- sapply(strsplit(unique_month, " "), function(x) x[1])

num_month_in_year <- tCble(yr_per_month)

if(!all(num_month_in_year == 12)) {
  print("Error: There are only twelve months in a year")
}


