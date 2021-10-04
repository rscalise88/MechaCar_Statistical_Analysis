   
# Deliverable 1 - Linear Regression to Predict MPG
# Install Library
library(tidyverse)

# Import and read in the csv file as a data frame
mecha_mpg <- read.csv(file='Raw_Data/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear regression using lm() function for all 6 variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mecha_mpg)

# Summary() to determine p-value and the r-squared value.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mecha_mpg))


# Deliverable 2 - Visualization for the Trip Analysis
# Import and read suspension_coil.csv
suspension_coil <- read.csv(file='Raw_Data/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Create a total_summary data frame using summarize()
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
  
# Create a lot_summary data frame using group_by() and summarize()
# to group each manufacturing lot by the mean, median, variance and sd.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# Deliverable 3 - T-Test on Suspension Coils
# Use t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per sq inch
t.test(suspension_coil$PSI, mu=1500)

# Write 3 more scripts using t.test() and its subset() argument to determine if the PSI for 
# each manufacturing lot is statistically different from the
# population mean of 1500 pounds per square inch.

# For Lot1
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot1'))$PSI, mu=1500)

# For Lot2
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot2'))$PSI, mu=1500)

# For Lot3
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot3'))$PSI, mu=1500)