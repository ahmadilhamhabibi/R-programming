
# create movie matrix
b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = T,
                     dimnames = list(c("The Matrix", "Reloaded", "Revolutions"),
                                     c("US", "Worldwide")))

matrix.mat

# arithmetic operation - scalar
matrix.scaled <- matrix.mat/1000
matrix.scaled

avg.margin <- matrix.mat - 121
avg.margin

# matrix subtraction
budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2)
budget
margin <- matrix.mat - budget
margin

# matrix multiplication
v <- matrix(c(1:6), nrow = 3)
v
matrix.multiplied <- matrix.mat*v
matrix.multiplied


#-----Matrix Operations
matrix.mat

total = colSums(matrix.mat)
rowSums(matrix.mat)

average = colMeans(matrix.mat)
rowMeans(matrix.mat)

matrix.prelim <- rbind(matrix.mat, average, total)
matrix.prelim
