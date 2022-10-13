# Solutions to control constructs (Lecture 3)

# Exercise 1::
num1 <- 21
num2 <- 12
num3 <- 17

# Solution A:
cat(sprintf("### Exercise 1 ###\n"))
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

# Exercise 2:
cat(sprintf("\n\n### Exercise 2 ###\n"))
first <- 1
second <- 1
for(i in 2:15){
  f <- first + second
  cat(sprintf("F_%d is: %d\n", i, f))
  first <- second
  second <- f
}

# Exercise 3:
cat(sprintf("\n\n### Exercise 3 ###\n"))
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
