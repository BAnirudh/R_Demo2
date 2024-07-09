# Generalized Linear Model

x<-seq(from = -10, to = 10, by = .02) #make x
beta0 = 0
beta1s = (seq(.25, 1.5, by = .1))

y<-function(i){
  1/(1+exp(-1*(beta0+beta1s[i]*x)))  
}

plot(x,y(1))
for(i in 1:length(beta1s)){
  lines(x,y(i))
}

#Alternative

x = seq(-10,10, length=1000)
beta0s = seq(-2,2,by=0.5); 
beta1=1
plot(c(-10,10), c(0,1), type="n", xlab = "X", ylab = "Probability", frame = F)
sapply(beta0s, function(beta0) {
  y = 1/(1+exp(-1*(beta0+beta1*x)))
  lines(x,y,type= "l", lwd = 3)
  }
  
  )


#Exercise

x = seq(-10,10, length=1000)
beta0 = 0
beta1=1
p= 1/(1+exp(-1*(beta0+beta1*x)))

plot(x,p)

#Simulating data and seeing the fitted value
x = seq(-10,10, length=1000)

beta0 = 0
beta1=1

p= 1/(1+exp(-1*(beta0+beta1*x)))
plot(x,p)

y=rbinom(prob=p, size=1, n=length(p))
points(x,y, col = "red")


fit = glm(y~x, family= binomial)
lines(x, predict(fit, col = "green"), col="blue")
lines(lowess(x,y))

#Using Raven's Data (some error)
rw<- ravensData$ravenWin
rs <- ravensData$ravenScore

OLS = lm(rw~rs, data=ravensData)
summary(OLS)

glm_raven = glm(rw~rs, data=ravensData, family=binomial)
summary(glm_raven)
lines(rs, predict(fit, col="green"), col="blue")


anova(log(glm_raven), test="Chisq")


#Using grogger Data
install.packages("devtools")
library(devtools)
require(foreign)

grogger <- read.dta("grogger.dta")


glm_grogger = glm(avgsen~durat, data = grogger, family=poisson)
summary(glm_grogger)


#Matrix Algebra
data(mtcars)

y <- mtcars$mpg
x <- cbind(1,mtcars$hp,mtcars$wt)

mtcars_OLS <- lm(y~x, data= mtcars)
summary(mtcars_OLS)

beta1 = solve(t(x)%*%x)%*% t(x)%*%y
beta1

e <- (I - x %*% solve(t(x) %*% x) %*% t(x) ) %*% y
