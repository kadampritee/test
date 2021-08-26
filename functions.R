#                User Defined Functions In R

# add function for adding two numbers 
add2num <- function(x,y)
{
  add <- x+y
  print(add)
}

# is greater than function to fulfill the criteria
#1. by passing one argument

greater10 <- function(x)
{
  greater <- x> 10
  print(greater)
}

#2.by passing two arguments

greater10 <- function(x,y)
{
  greater <- x> y
  print(greater)
}

# calculating mean by using functions
colmean <- function(x)
{
  cal <- ncol(x)
  means <- numeric(cal)
  for(i in 1:cal)
  {
    means[i]<- mean(x[,i],na.rm = removeNA )
  }
  means
}
data()