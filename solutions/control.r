# Solutions to control structures 
# Section 1.1.2:
# Exercise 1:
# ----------
num1 <- 21
num2 <- 12
num3 <- 17

# Solution A:
cat(sprintf("### Section 1.1.2: Exercise 1 ###\n"))
cat(sprintf("Solution A:\n"))
if(num1<=num2){
   if(num1<=num3){
      cat(sprintf("%d is the smallest number\n", num1))	 
  }
}else{
   if(num2<=num3){
        cat(sprintf("%d is the smallest number\n", num2))
   }else{
        cat(sprintf("%d is the smallest number\n", num3))
   }	    
}  
	

# Solution B:
cat(sprintf("Solution B:\n"))
if((num1<=num2) && (num1<=num3)){
   cat(sprintf("%d is the smallest number\n", num1))
}else if((num2<=num1) && (num2<=num3)){
   cat(sprintf("%d is the smallest number\n", num2))
}else{
   cat(sprintf("%d is the smallest number\n", num3))
}  



# Section 1.2.2:
# Exercise 1:
# ----------
# Solution 1
cat(sprintf("\n\n### Section 1.2.2: Exercise 1 ###\n"))
first <- 1
second <- 1
for(i in 2:15){
  f <- first + second
  cat(sprintf("F_%d is: %d\n", i, f))
  first <- second
  second <- f
}

# Solution 2:
x <- vector(mode='integer', length=15)
x[1] <- 1
x[2] <- 1
for(i in 3:15){
    x[i] <- x[i-1] + x[i-2]
}
x


# Exercise 2:
# ----------
cat(sprintf("\n\n### Section 1.2.2: Exercise 2 ###\n"))
num <- 751
CONV_LIMIT <- 1.0E-8
isConverged <- FALSE
xold <- num
iter <- 0
while(!isConverged){
   xnew <- 0.5*(xold + num/xold)
   iter <- iter + 1
   cat(sprintf("  Iter:%2d --> xnew:%14.10f\n", iter, xnew))
   if(abs(xnew-xold)<CONV_LIMIT){
      cat(sprintf("  =>Converged!!\n"))
      isConverged <- TRUE
   }
   xold <- xnew
}
