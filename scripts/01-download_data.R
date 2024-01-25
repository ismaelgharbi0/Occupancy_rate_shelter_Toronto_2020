#### Preamble ####
# Purpose: Downloads and saves the data from the City of Toronto Open Data 
# Portal about Shelter Occupancy in Toronto in 2020
# Author: Ismael Gharbi 
# Date: 23 January 2023 
# Contact: ismael.gharbi@mail.utoronto.ca 
# License: MIT
# Pre-requisites:Installing opendatatoronto package.


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# Code extracted from Open Data Toronto website

# get package
package <- show_package("shelter-occupancy-Toronto")
package

# get all resources for this package
resources <- list_package_resources("shelter-occupancy-Toronto")

# identify datastore resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
new_data <- filter(datastore_resources, row_number()==1) %>% get_resource()

new_data



#### Save data ####

write_csv(new_data, "inputs/data/shelter_occupancy_2020.csv") 
