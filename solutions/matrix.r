# Solutions:

# Section 4.2.2:
#--------------
# Creation of the matrix:
NUM <-6
r1 <- 3^(1:NUM)
r2 <- 5^(1:NUM)
r3 <- 7^(1:NUM)
r4 <- 11^(1:NUM)
r5 <- 13^(1:NUM)
r6 <- 17^(1:NUM)

# Method 1:
A <- rbind(r1,r2,r3,r4,r5,r6)
rownames(A) <- NULL
print(A)

# Method 2:
# --------
x <- c(3,5,7,11,13,17)
A <- cbind(x, x**2, x**3, x**4,x*5,x**6)
colnames(A) <- NULL
print(A)

# Method 3:
A <- matrix(c(r1,r2,r3,r4,r5,r6), ncol=6, byrow=TRUE)

# Part 1:
# ------
A[3,3]

# Part 2:
# ------
# Method 1: Note a linear index works in a COLUMN major fashion
A[c(8,20,17,35)]

# Method 2:
sel <- matrix(c(2,2, 2,4, 5,3,5,6),ncol=2,byrow=TRUE)
A[sel]

# Method 3:
mybool <- matrix(rep(FALSE,36),ncol=6,byrow=TRUE)
mybool[2,2] <- TRUE
mybool[2,4] <- TRUE
mybool[5,3] <- TRUE
mybool[5,6] <- TRUE
A[mybool]

# Part 3:
# -------
# Fourth row as vector
A[4,]
dim(A[4,])

# Part 4:
# ------
# Fourth row as matrix
A[4,, drop=FALSE]
dim(A[4,, drop=FALSE])

# Part 5:
# ------
# Rows 2 and 3
A[2:3,]

# Part 6:
# ------
# Everything except rows 2 and 4
A[-c(2,4),]

# Part 7:
# ------
# Retrieve diagonal
# Without the use of diag function
mysub <- matrix(rep(1:6,each=2), ncol=2,byrow=T)
# or:
mysub <- cbind(1:6,1:6)
A[mysub]
# Use of the diagonal function
diag(A)



# Section 4.3.2:
# -------------
# I. Create a synthetic dataset
x <- seq(from=0.0, to=20.0, by=0.25)
a <- 2.0
b <- 1.5
c <- 0.5
y <- a + b*x + c*x^2 + rnorm(length(x))

# II. Create the X-matrix and Y-matrix
Xmat=cbind(rep(1,length(x)), x, x^2)
print(Xmat) 
YMat <- matrix(y,ncol=1)
print(YMat)

# Step III: Estimate Beta and Residuals
# Calculate: beta. (X^T.X) Xmat^t Y
beta <- solve(t(Xmat)%*%Xmat) %*% t(Xmat) %*% YMat
print(beta)

# Calculate the residuals
residuals <- y - Xmat%*%beta
print(residuals)

# Estimate Beta and residuals using LM
myquadfit <- lm(y ~ x + I(x**2))
cat(sprintf("The estimates for beta::\n"))
cat(myquadfit$coefficients)
cat(sprintf("The residuals::\n"))
cat(myquadfit$residuals)
