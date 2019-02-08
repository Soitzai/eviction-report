# Analysis script: compute values and create graphics of interest
library("dplyr")
install.packages("ggplot2")
library("ggplot2")
install.packages("lubridate")
library("lubridate")
library("tidyr")
install.packages("ggmap")
library("ggmap")

# Load in your data
data <- read.csv("data/Eviction_Notices.csv", stringsAsFactors = FALSE)

# Compute some values of interest and store them in variables for the report


# How many evictions were there?
num <- nrow(data)

# Create a table (data frame) of evictions by zip code (sort descending)
zip <- data %>% 
  group_by(Eviction.Notice.Source.Zipcode) %>% 
  count() %>%
  arrange(-n) %>%
  ungroup() %>%
  top_n(10, wt = n)

# Create a plot of the number of evictions each month in the dataset

# Store plot in a variable

# Map evictions in 2017 

# Format the lat/long variables, filter to 2017

# Create a maptile background

# Add a layer of points on top of the map tiles
