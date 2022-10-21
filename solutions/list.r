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



# Exercise 3:
# ==========
# Auxiliary function to count the occurrence of each character in the vec
countAux <- function(vec){

  uniq_el <- unique(vec)

  if(length(uniq_el)>0) {
     count <- vector(mode="integer", length=length(uniq_el))
     for(i in seq_along(uniq_el)){
         count[i] <- sum(uniq_el[i] == vec)
     }
     names(count) <- uniq_el
     return(count)
  }
  return(NULL)
}

# Count the occurrence  of
#   a.the letters in content
#   b.the non-letters in content
countOccurrence <- function(content){

  vec <- strsplit(content, split='')
  vec <- tolower(vec[[1]])
  vecLetters <- sort(vec[vec %in% letters])
  cvecLetters <- vec[!(vec %in% letters)]

  return(list(  countAlpha=countAux(vecLetters),
                countNonAlpha=countAux(cvecLetters)))
}

# Example 1:
# =========
cat(sprintf("First amendment::\n"))
l1 <- "Congress shall make no law respecting an establishment of religion,"
l2 <- "or prohibiting the free exercise thereof;"
l3 <- "or abridging the freedom of speech, or of the press;"
l4 <- "or the right of the people peaceably to assemble,"
l5 <- "and to petition the government for a redress of grievances."
firstamend <- paste(l1,l2,l3,l4, l5, sep=" ")
res <- countOccurrence(firstamend)
print(res)

# Example 2:
# ---------
res <- countOccurrence("")
print(res)
