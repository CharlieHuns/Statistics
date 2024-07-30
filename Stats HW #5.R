



# HW #5
getwd()
setwd("/Users/petechuns/Documents/umnweather")
NoU <- read.table("GettingToKnowYouSample.csv", sep = ",", header = TRUE)
attach(NoU)

# A
View(NoU$zzz.weekend)
nrow(NoU)
mean(NoU$zzz.weekend)
sd(NoU$zzz.weekend)
# standard error = s/sqrt(n) =
sd(NoU$zzz.weekend) / sqrt(491)


# B
qt(0.98, df=490)

# C is on document

# D
t.test(NoU$zzz.weekend, conf.level = 0.98)
#  WE are 98% confident that the mean number of 
# hours per night sleeping is between 8.219 and 8.524

# E
z.val <- qnorm(0.01, lower=FALSE)
(z.val * (1.449079/0.166667))^2
