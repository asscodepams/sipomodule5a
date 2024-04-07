X<-Data_Distribution_Fitting_Trial$`Waktu Maintenance (Menit)`
X
install.packages('fitdistrplus')
library(fitdistrplus)
descdist(data = X, discrete = FALSE, boot = 1000)

#estimated Distribusi Normal
normal_ = fitdist(X, "norm")
plot(normal_)
print(normal_)
summary(normal_)

#estimated Distribusi Logistic
logistic_ = fitdist(X, "logis")
plot(logistic_)
print(logistic_)
summary(logistic_)

#estimated Distribusi Gamma
gamma_ = fitdist(X, "gamma")
plot(gamma_)
print(gamma_)
summary(gamma_)

#estimated Distribusi Lognormal
lognormal_ = fitdist(X, "lnorm")
plot(lognormal_)
print(lognormal_)
summary(lognormal_)

#estimated Distribusi Weibull
weibull_ = fitdist(X, "weibull")
plot(weibull_)
print(weibull_)
summary(weibull_)

#Goodness of Fit
install.packages('fitur')
library('fitur')
library('actuar')
fitur::fit_dist_addin()
