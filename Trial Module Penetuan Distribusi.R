#Distribusi Binomial
#P(x=14)
dbinom(x = 14, size = 1400, prob = 0.02)

#P(X>=20)
pbinom(q = 19, size = 1400, prob = 0.02, lower.tail = FALSE)

#P(4<=X<=14)
pbinom(q = 14, size = 1400, prob = 0.02, lower.tail = TRUE)-pbinom(q = 3, size = 1400, prob = 0.02, lower.tail = TRUE)

#Distribusi Poisson
#P(x=2)
dpois(x = 2, lambda = 4)

#P(x=8)
dpois(x = 8, lambda = 8)

#P(x>=14)
ppois(q = 13, lambda = 12, lower.tail = FALSE)

#Distribusi Normal
#P(Px<14)
pnorm(q = 14, mean = 30, sd = 4, lower.tail = TRUE)

#P(x>28)
pnorm(q = 28, mean = 30, sd = 4, lower.tail = FALSE)

#P(40<x<50)(updated)
pnorm(q = 50, mean = 30, sd = 4, lower.tail = TRUE)-pnorm(q = 40, mean = , sd = 4, lower.tail = TRUE)

#Distribusi Exponential
#P(X>0.06667)
pexp(q = 0.06667, rate = 46.25, lower.tail = FALSE)

