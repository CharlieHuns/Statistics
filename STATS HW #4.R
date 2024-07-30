






#A)
setwd("/Users/petechuns/Documents/umnweather")
NoU <- read.table("GettingToKnowYouSample.csv", sep = ",", header = TRUE)
table(NoU$text.drive)
# the sample p is 145/491 or 0.30
# I do not think this is a good sample proportion because it does not involve
# all of Minnesota, only the students in this class.

# B) Assume 25% of MN people text and drive
# The shape of the sampling distribution would appear normal, bell shaped,
# and centered around the mean
# the mean will equal p = 0.25
# sd = sqrt[(0.25(1-0.25))/491] = 0.0195
pnorm(0.30, mean=0.25, sd=0.0195, lower.tail = FALSE)
1-pnorm(0.30, mean=0.25, sd=0.0195)



