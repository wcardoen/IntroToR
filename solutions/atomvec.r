# ATOMIC VECTORS: SOLUTIONS
# Section 3.1.2:
# -------------
# Exercise 1:
x <- seq(from=6,to=48,by=7)
x

# Exercise 2 : rep() and seq()
x<-rep(seq(from=-8,to=16,by=8), times=c(4,1,3,5))
x


# Section 3.2.2:
# -------------
# Exercise 1:
x<- seq(-8,to=10,by=2)**3
x



# Section 3.3.2:
# -------------
# Exercise 1: rev function
x <- seq(from=2,to=33,by=3)
x
rev(x)
x[length(x):1]

# Exercise 2: Taylor series
x <- rep(0.2,100)
pw <- 1:100
vec <- x^pw*1/pw *(-1)^(pw+1)
sum(vec[1:5])
sum(vec[1:10])
sum(vec[1:15])
log(1.2)

# Exercise 3: logarithmic return
price <- abs(rcauchy(1000))+1.E-6
mydifflog <- log(price[-1]) - log(price[-length(price)])
res <- diff(log(price))
res[1:10]
mydifflog[1:10]

# Exercise 4: Monte-Carlo
N <- 100000
x <- runif(n=N)
y <- runif(n=N)
ratio <-  sum(x^2+y^2<1)/N
print(4.0*ratio)



# Section 3.5.2:
# -------------
# Exercise 1: NaN
dailyusage <- 30.0 + runif(365, min=0, max=5.0)
dailyusage[sample(1:365, sample(1:50,1), replace=FALSE)] <- NA
sum(is.na(dailyusage))
mean(dailyusage, na.rm=TRUE) * 365



# Section 3.7.2:
# -------------
# Exercise 1:
x <- sample(x=0:1000,size=100, replace=TRUE)
x
any( (x%%4==0) & (x%%6==0))
ind <- which((x%%4==0) & (x%%6==0))
ind
x[ind]
