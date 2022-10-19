# Exercise 1:
# ==========
lstex1 <- list(
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
lstex1[[1]][[3]][[3]][c(1,2)]

# Extract the second column of the matrix as a matrix
lstex1[[1]][[3]][[1]][,2,drop=FALSE]

# Extract -1 as a scalar
lstex1[[1]][[3]][[4]][[2]]

# Extract -1 as a list
lstex1[[1]][[3]][[4]][2]

# Extract ALL numeric values 
res <- unlist(lstex1)
res <- as.double(res)
res[!is.na(res)]


# Exercise 2:
# ==========
lstex2 <- list(1:10,
               matrix(seq(from=1,to=20), nrow=4),
               5+3i,
               list('a','d','b'),
               "UoU",
               c(T,F,T,T,T),
               "Hello"
	      ) 
lstex2[[7]] <- NULL
lstex2[[5]] <- "Hello UoU"
lstex2[[4]] <- list('a','b','c','d')
lstex2[[3]] <- NULL
lstex2[[1]] <- NULL
lstex2
