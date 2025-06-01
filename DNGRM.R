# Performing reproducible research steps 
# Used pack
library(readr)
library(dplyr)

# Import the data
dengue <- read_csv("dengue.csv")

# Filter by 2014 
dengue_2014 <- dengue %>% filter(year == 2014)

# Count total cases
total_cases <- sum(dengue_2014$case_number, na.rm = TRUE)

# result
cat("Total dengue cases in 2014:", total_cases, "\n")
