# Section 2.1.2:
# -------------

# Exercise 1::
# Solution 1
myfactorial1 <- function(n){

   res <- 1	
   if(n==0){
      return(res)
   }
   else{
      for(i in 1:n){
          res <- res*i
      }
   }
   return(res)   
}	

# Solution 2
myfactorial2 <- function(n){
  
  res <- 1	
  if(n==0) return(1)
  return(prod(1:n))
}

# Solution 3
myfactorial3 <- function(n){
  
  if(n==0) return(1)
  return(n*myfactorial3(n-1))
}


## Exercise 2::
castdie <- function(n){
  
  if(n>0) return(sample(1:6,n,replace=TRUE))
  if(n<=0) stop("Illegal value for #casts!")
}

castdie2 <- function(n, p=c(1/10,1/10,3/10,3/10,1/10,1/10)){
  
  if(n>0) return(sample(1:6,n,replace=TRUE,p))
  if(n<=0) stop("Illegal value for #casts!")
  
} 

## Exercise 3::
genAR1Series <- function(n, x0=0.0, phi=0.7){

   eps <- rnorm(n)
   x <- vector(mode="double", length=n+1)
   x[1] <- x0
   for(i in 1:n){
       x[i+1] <- x[i]*phi + eps[i]
   }
   return(x[-1])
}


x <- genAR1Series(n=1000)

myacf <- function(x){

  n <- length(x)
  res <- vector(mode="double", n)
  xav <- mean(x)

  for(h in 0:(n-1)){
      res[h+1] <- 1/n*sum((x[(1+h):n] - xav)*(x[1:(n-h)] -xav))
  }
  return(res/res[1])
}

x <- genAR1Series(n=1000)
v1 <- myacf(x)
v2 <- acf(x)
cat(sprintf("Sum of diff. (first 20 terms):%16.12f\n", sum(abs(v1[1:20] -v2$acf[1:20]))))



## Section 2.2.2:
## Exercise 1:
`%+%` <- function(x,y){
     return((x+y)%% 4)
}


x <- sample(0:3, size=10, replace=TRUE) 
cat(sprintf("x::\n"))
print(x)
y <- sample(0:3, size=12, replace=TRUE)
cat(sprintf("y::\n"))
print(y)
res <- x %+% y
cat(sprintf("res::\n"))
print(res)
