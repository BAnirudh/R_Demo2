#Class 9
install.packages("UsingR")
install.packages("ggplot2")
library(UsingR)
data("galton")

#Making a histogram

hist("child"")
childage <- galton$child
hist(childage)

hist(galton$parent)
par(mfrow=c(1,2))

plot(galton$parent,galton$child)

#regression

y = lm(galton$child~galton$parent, data = galton)
summary(y)

x <- galton$parent
y <- galton$child
b1 = (cor(x,y)*sd(y)/sd(x))
b0 = mean(y)- b1*mean(x)

lml = lm(y~x)
summary(lml) #Here we 

rbind(c(b0,b1), coef(y~x))

#Deviations from mean

y_dev = y - mean(y)
x_dev = x - mean(x)

#Normalizing the data

x_norm = (x-mean(x))/sd(x)
y_norm = (y-mean(y))/sd(y)
lm_norm = lm(y_norm~x_norm)
summary(lm_norm)

cor(y,x)
