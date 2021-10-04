# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
**Questions:
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
The summary output indicated that the vehicle slength and ground clearance have the most effect on the MPG of the vehicles, and therefor have the least amount of random variance.


**Is the slope of the linear model considered to be zero? Why or why not?**
No, the slope is not considered to be zero.  The p-value of the lienar regression was 5.35e-11; significantly smaller than the significance level of .05%. Also, the coefficients for the variables are too significant to allow for this.  See below:

    mpg = 6.267(vehicle_length) + 0.001245(vehicle_weight) + 0.06877(spoiler_angle) + 3.546(ground_clearance) – 3.411(AWD) – 104.0

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
The linear regression does effectively predict the mpg of MechaCar prototypyes.  The r-square value from the linear regression summary indicated that 71.5% of mpg can be related to the linear regression.

## Summary Statistics on Suspension Coils
**Question: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The script output indicated in the total_summary that the variance is 62.29, which meets the design specification indicated above.  However, when reviewing each lot on an individual basis using the lot summary, it becomes apparent that the third lot's variance is far too high and does not meet the design specification.

## T-Tests on Suspension Coils
**1: T-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.**

![](https://github.com/rscalise88/MechaCar_Statistical_Analysis/blob/main/images/all.PNG)

The results give a p-value of .06, above the significance level.  Based on this, we can conclude that the PSI across all lots is similar to the population mean.


**2a: T-test to to determine if the PSI for manufacturing lot 1 is statistically different from the population mean of 1,500 pounds per square inch.**

![](https://github.com/rscalise88/MechaCar_Statistical_Analysis/blob/main/images/lot1.PNG)

The script shows a p-value of 1, which means the sample mean is the same as the population mean.  

**2b: T-test to to determine if the PSI for manufacturing lot 1 is statistically different from the population mean of 1,500 pounds per square inch.**

![](https://github.com/rscalise88/MechaCar_Statistical_Analysis/blob/main/images/lot2.PNG)

Like what was seen in the p-value from all of the lots overall, the results for lot 2 give a p-value of .06, above the significance level.  Based on this, we can conclude that the PSI for lot 2 is similar to the population mean.

**2c: T-test to to determine if the PSI for manufacturing lot 1 is statistically different from the population mean of 1,500 pounds per square inch.**

![](https://github.com/rscalise88/MechaCar_Statistical_Analysis/blob/main/images/lot3.PNG)

Results for the lot 3 t-test give a p-value of 0.04168, which is less than the significance level.  Based on this, we can conclude that the PSI for lot 3 is not similar to the population mean.


## Study Design: MechaCar vs Competition
As we've already looked at the MPG of MechaCar in some respects, I propose a statistical study of the cost, maintenance cost, and safety ratings of MechaCars when comapred to the competition.
