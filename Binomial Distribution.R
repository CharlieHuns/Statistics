# Bionomial Distribution
choose(20,12) * 0.77^12 * (1-0.77)^8

# If X ~ (45, 0.9), find P(X=40)
dbinom(40, size=45, prob=0.9)

# Find the proportion of the Bin(20, 0.4) distribution
# that is less than or equal to 10, P(X<=10)
pbinom(10, size=20, prob=0.4)

# Find the proportion of the Bin(70, 0.1) distribution
# that is above 56
# P(X>56) = 1-P(X<=56)

pbinom(56, size=70, prob=0.1, lower = F)

# when lower is false is specified it calculates the upper tail probability