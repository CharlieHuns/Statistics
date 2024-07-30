

# HW #7 Problem #7
setwd("/Users/petechuns/Documents/umnweather")
NoU <- read.table("Getting2NoUF2020.csv", sep = ",", header = TRUE)
attach(NoU)
table(from.mn,expected.grade)
View(NoU)

# A
# Assumptions
There are 5 successes and failures and the sample is
independent and random
# Hypothesis
H0:Pmn=Pother   Ha: Pmn does not equal Pother
# Test statistic
NumA <- c(105,59)
SampSize <- c(149,88)
prop.test(x=NumA, n=SampSize, conf.level = 0.90, 
          alternative = "two.sided", correct = FALSE)
# P-value
0.5812
# Conclusion
The p-value is greater than 0.1, therefore we fail to reject at the 0.10 level.
We do not have enough information to conclude that there is a difference in the
true population proportion concerning the different proportion of getting an A
in stats when you are from MN or other.

# B
The p-value (0.5812) means that the probability of receiving results that mean 
there isnt a difference between the probability of expecting an A when you are
from either MN or other

# C
The CI is (-0.06857474  0.13706163) 
This means that we are 90% confident that the true propotion of students from 
MN or other expecting the same grade is in this interval

# D
The p-value should be the same because it is no dependent on sample size

# E
Type I error would mean that we rejected the null hypothesis when we shouldnt
Type II error means we did not reject when we should have
Type II error may be present, which in this case means there would be a 
difference between MN students and students from other places

# F 
Type II because I failed to reject and Type II occurs when you fail to reject
when you should have rejected.
