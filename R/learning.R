
# Basics of R -------------------------------------------------------------


# loading packages --------------------------------------------------------

library(tidyverse)
library(NHANES)

#This will be used for testing out Git
# Save the selected columns as a new data frame
# Recall the style guide for naming objects
nhanes_small <- select(NHANES, Age, Gender, BMI, Diabetes,
                       PhysActive, BPSysAve, BPDiaAve, Education)

# View the new data frame
nhanes_small

# Rename all columns to snake case
nhanes_small <- rename_with(nhanes_small, snakecase::to_snake_case)

# Have a look at the data frame
nhanes_small
nhanes_small <- rename(nhanes_small, sex = gender)
nhanes_small


blood_pressure <- select(nhanes_small, starts_with("bp_"))
rename(blood_pressure, bp_systolic = bp_sys_ave)
