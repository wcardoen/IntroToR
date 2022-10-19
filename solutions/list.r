# Exercise
# ========
mylst <- list(
              list(
                   seq(from=4,to=40,by=5),
                   "hello world",
                    list(
                         matrix(100:119,nrow=5),
                         "bye",
                         c(7,13,17),
                         list(451,-1,-17) 
		        )
                  )
             )

# Extract (7,13):
mylst[[1]][[3]][[3]][c(1,2)]

# Extract the second column of the matrix as a matrix
mylst[[1]][[3]][[1]][,2,drop=FALSE]

# Extract -1 as a scalar
mylst[[1]][[3]][[4]][[2]]

# Extract -1 as a list
mylst[[1]][[3]][[4]][2]

# Extract ALL numeric values 
res <- unlist(mylst)
res <- as.double(res)
res[!is.na(res)]
