
# create matrix
gross <- c(381, 1340, 318, 975, 396, 960, 292,
           940, 302, 934, 290, 897, 262, 879, 249, 797)
hp.mat <- matrix(gross, nrow = 8, byrow = T)
hp.mat

# indexing
hp.mat[6, 2]    # index row and column
hp.mat[6]       # index row and only one value
hp.mat[6,]      # index all row
hp.mat[,2]      # index all column


# slicing 
hp.snip = hp.mat[c(1, 3, 7), ]    # select multiple rows
hp.snip

# assigning row and column names
colnames(hp.mat) <- c("USA", "Worldwide")
row.names(hp.mat) <- c("Hallows Part 2", "Sorcerer's Stone", "Hallows Part 1",
                       "Order", "Prince", "Goblet", "Chamber", "Prisoner")
hp.mat

# slicing with name
hp.mat["Goblet",]
hp.mat[ ,"USA"]
