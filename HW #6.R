




# HW #6 Problem 6
setwd("/Users/petechuns/Documents/umnweather")
NoU <- read.table("GettingToKnowYouSample.csv", sep = ",", header = TRUE)

# NOTE : I will also list all parts possible in my HW write up for correct notation
# A   Assumptions
n is greater than 30 and the sample is random
# B   Hypothesis
H0: mu = 8    Ha: mu does not equal 8
# C
mean(NoU$zzz.weekend)
sd(NoU$zzz.weekend)
nrow(NoU)
# D Test statistic by hand
# E    P Value
2*pt(5.481, df=490, lower=FALSE)
# F    Test Statistic
t.test(NoU$zzz.weekend, conf.level = 0.99, alternative = "two.sided", mu=8)
2*pt(5.6837, df=490, lower=FALSE)
# G    Interpret
the p-value is less than 0.01, which means we can reject the hypothesis at the 0.01 level.
# H Conbclusion
We have significant evidence that the average amount of time umn students spent sleeping on
the weekend is not 8 hours.
# I  Error?
I have possible made a Type I error
# J  Confidence Level
the confidence interval at the 0.99 confidence level is
(8.2026,8.5408)
From this it can be determined that the hypothesis may be rejected because the value 8 is not
present in the interval