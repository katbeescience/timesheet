# This script calculates time duration from start and end clock time inputs.
# Kathryn Busby
# mkbusby@email.arizona.edu
# May 21, 2021

# Load libraries

library(lubridate)

# Calculate time difference between start and end time. We'll make a function.

dur <- function(start, end){
  startampm <- as.time(start)
  endampm <- as.time(end)
  duration <- end - start
  return(duration)
} 
