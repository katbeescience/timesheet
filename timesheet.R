# This script calculates time duration from start and end clock time inputs.
# Kathryn Busby
# mkbusby@email.arizona.edu
# May 21, 2021

# Load packages

# install.packages("chron")

# Load libraries

library(chron)

# Calculate time difference between start and end time. We'll make a function.

convert.time <- function(){
start <- readline(prompt="Enter start time: ")
end <- readline(prompt="Enter end time: ")
starttime <- strptime(start, "%I:%M %p")
endtime <- strptime(end, "%I:%M %p")
dur.table <- data.frame(starttime, endtime)
dur.table$diff <- dur.table$endtime - dur.table$starttime
sum <- sum(dur.table$diff)
return(sum)
}

