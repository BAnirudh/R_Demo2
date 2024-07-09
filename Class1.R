#### Functions 123456
#MinMAx and other values

min(d[,c(4,8,12)])

min(d[c(3,6),c(1:5)])

mean(d[c(2,4,5),]


#Functions:
Function_1 <- function(a,b,c)
{
  output=a^3+b^2+c
  return(output)
  }

#Example for fuction

FK <- function(f,k)
{
  k=((f-32)*5/9+273.15)
  return(k)
}

#New Function
kc <- function(c,k)
{
  c=k-273.15
  return(c)
}

#Combine??
fc_kc <- function(temp_F){
  temp_k <- FK(f,k)
  temp_C <- kc(c,k)
  val <- (temp_k,temp_C)
  return(val)
}

#Assigning a Value (Use the = sign in the first line)
mySum <- function(input1,input2=10){
  output <- input1 + input2
  return(output)
}

#
vc <- c("Hello","World")
vp <- c("***")

vpplusvc <- c(vp,vc,vp)

Function_2 <- function(vp,vc){
  output <- c(vp,vc,vp)
  return(output)
}

##??
Function_3 <- function(vp,vc){
  output <- c(vp,vc,vp)
  length(vc)
  return(output)
}

##
analyze <- function(d=read.csv("/Users/anirudhbharadwaj/
                               Desktop/IP2022/R/data/inflammation-01.csv")){
   plot(apply(d,2,min), xlab="Day", 
                 ylab = "Min", main="Min across all patients" )
  plot(apply(d,2,max), xlab="Day", 
       ylab = "Max", main="Max across all patients" )
  plot(apply(d,2,mean), xlab="Day", 
       ylab = "Mean", main="Mean across all patients" )
}
