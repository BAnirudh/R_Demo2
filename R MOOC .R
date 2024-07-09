##Creating Objects in R
x <- 10:20

y <- x+2
print(y)

z <- y*3

answer <- (z-6)/3

answer #We can also try doing the entire algorithm in 1 line of code

answer <- (((x+2)*3)-6)/3

##Creating Vectors (data sequence of the smae type)
is.vector(x) #Returns TRUE if the value is a vector

##Functions in R
mean(x)

#exercise
years_of_experience <- c(8, 10, 10, 1, 10, 10, 8, 12, 1, 12)
sum(years_of_experience)
mean(years_of_experience)
median(years_of_experience)
length(years_of_experience)
sd(years_of_experience)
round(years_of_experience)
print(years_of_experience)

#Building a function
deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
print(deck)

hand <- sample(deck, size=3, replace =T)
print(hand)

draw <- function(){
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, size=3, replace =T)
  print(hand)
}

draw()

#Excercise

toss <- function(){
  toss_coin <- c("Heads", "Tails")
  output <- sample(toss_coin, size = 100, replace = T, prob = c(0.3, 0.7))
  print(output)
}
output


#Using Relational Operators and Loops:
#Write a statement that prints "Average" if the input is equal to or larger than 1 and less than 60, "Above Average" if the input is equal to or larger than 60 and less than 75, and "Excellent" if the input is equal to or larger than 75. For any other value, the statement should print "Please input a number between 1 and 100"

v <- 1000

if(v){
  v >= 1
  v <= 60
  print("Above Average")
}
