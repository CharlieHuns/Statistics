








setwd("/Users/petechuns/Documents/umnweather")
A <- read.table("Male Vs. Female Weight at Birth3.csv", sep =",", header = TRUE)
names(A)
head(A)
tail(A)
View(A)
t.test(x=A$MaleWeight, y=A$FemaleWeight, alternative = "greater", conf.level = 0.95)
t.test(x=A$MaleWeight, y=A$FemaleWeight, alternative = "two.sided", conf.level = 0.95)

hist(A$MaleWeight, main="Histogram for Weight of Males at Birth", 
     xlab = "Weight (lbs)", breaks = 7, col = 'skyblue3')
hist(A$FemaleWeight, main="Histogram for Weight of Females at Birth", 
     xlab = "Weight (lbs)", breaks=7, col = 'peachpuff')
boxplot(A, main = "Boxplot of Weight of Babies", range = 0, col = 'yellow1')
median(A$FemaleWeight)
median.default(A$MaleWeight, na.rm = TRUE)
sd(A$FemaleWeight)
sd(A$MaleWeight, na.rm = TRUE)
IQR(A$MaleWeight, na.rm = TRUE)
IQR(A$FemaleWeight)
qqnorm(A$MaleWeight, main= "QQ Plot of Weight at Birth for Male")
qqline(A$MaleWeight)
qqnorm(A$FemaleWeight, main = "QQ Plot of Weight at Birth for Female")
qqline(A$FemaleWeight)
?ggplot
