#Data Type

class(1)
typeof(769)
length(769)
attributes(769)

class(cat)
class("cat")

#
x <- "dataset"
typeof(x)
class(x)
length(x)
attributes(x)

y <- 1:10
typeof(y)
class(y)
length(y)
attributes(y)

z <- as.numeric(y) 
typeof(z)
class(z)
length(z)
attributes(z)

#Vectors
vector("character", length=5)
logical(5)
x <- c(1,2,3)
z <- c("Sarah", "tracy", "Jon")

z

seq(10)
seq(from=1, to=10, by=0.01)
x <- c("a", NA, "c", NA)
y <- c("a","b","c","d","e")
is.na(x)
anyNA(x)
anyNA(y)

#Mixing vector types
xx <- c(1.7, "a")
xx
typeof(xx)

xx <- c(T, 2)
xx
typeof(xx)

xx <- c("a", T)
xx


as.<classname>(xx)
as.numeric("1")
as.character(1:10)
class(1:10)


#Matrix
m <- matrix(nrow=2, ncol=2)
m
dim(m)

m2 <- matrix(10,50)
m3 <- matrix(10,50,50)
m3


m <- 1:4
dim(m) = c(2,2)
m


#exercise 4:
I <- matrix(10)
I
J <- matrix(10)
J

m = matrix(0,10,10)
for (I in 1:10) {
  for (J in 1:10) {
    if (I==J){
    m(I,J) <- 1
    }
    else{ 
      (m(I,J) <- 0)
    }
  }
}



#List
x <- list(1, "a", T, 1+4i)
class(x[1])
class(x[[1]])

mylist <- list(a= "Karthik Ram", b= 1:10, data = head(iris))
mylist$a
mylist
dt <- data.frame(id = letters[1:10], x= 1:10, y = 11:20)
dt
dt$x
dt$y

head(dt)
tail(dt)
dim(dt)
nrow(dt)
ncol(dt)
str(dt)
sapply(dt, class)

is.list(dt)
# FOr 1D:If all the elements are homogenous then the data type would be an atomic vector
#For 2D or more: if homogenous=matrix and heterogenous then dataframe 

remove(dt.)
#Exercise 5:
dt <- data.frame(id = letters[1:10], x= NA, y = NA)

for (variable in vector) {
  if
}





