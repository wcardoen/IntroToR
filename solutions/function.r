# Lecture 3: Functions

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


## Exercise 4::
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
