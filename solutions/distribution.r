# Exercises
# Exercise 1: Chisq
iter <- 10**seq(4,7)
nu <- 5
for(niter in iter){
    x <- rchisq(n=niter,df=nu)
    xav <- mean(x)
    s2 <- var(x)
    cat(sprintf("N=%d\n", niter))
    cat(sprintf("  Av. :%8.4f\n", xav))
    cat(sprintf("  Var.:%8.4f\n", s2))
}    

# Exercise 2: Hypothesis test
df <- read.csv(file="data/beer.csv", header=TRUE, sep=',')
x <- df$alcohol

# Calculate tval
xav <- mean(x)
s <- sd(x)
n <- length(x)
tval <- (xav - 5.0)/(s/sqrt(n))
cat(sprintf(" mean(x):%12.8f\n", xav))
cat(sprintf(" s      :%12.8f\n", s))
cat(sprintf(" t-value:%12.8f\n", tval))

# Calculate critical value
tcritical <- qt(0.95,df=(n-1))
cat(sprintf(" t-critical:%12.8f\n", tcritical))

# Hypothesis Test
if(tval > tcritical){
  print("Reject H0")
}else{
  print("Accept H0")
}

# Cumulative probability to right of tval
pval <- 1.0- pt(tval,df=(n-1))
cat(sprintf(" P(rejection):%12.8f\n", pval))
