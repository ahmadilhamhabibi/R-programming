my.mat <- matrix(runif(12), nrow = 3, byrow = TRUE, dimnames = list(c("x", "y", "z"),
                                                                    c("uno", "dos", "tres", "cuatro")))

my.mat


#Scale the matrix by 10 and save the result.
my.mat <- my.mat*10
my.mat

# Extract a 2x4 matrix from it and save the result.
s.mat <- my.mat[1:2, ]
s.mat

# Subtract the smaller matrix from the larger one. Can you do that? Why?
my.mat - s.mat    #Error in my.mat - s.mat : non-conformable arrays

# Extract a 3x3 matrix from the original matrix and save the result. 
# Try the subtraction again. Can you do that? Why?
m.mat <- my.mat[ , -4]
my.mat - m.mat    #Error in my.mat - s.mat : non-conformable arrays
  
# Extract the column called “uno” as a vector from the original matrix and save the result. 
# Try the subtraction again. Can you do that? Why?
uno <- my.mat[, "uno"]
my.mat - uno
#---you can only do matrix operations with two matrices when they are of the same size
#---R's recycling rules apply when you try to do an operation with a matrix and a vector

  
# Lookup the rnorm() function. 
# Create a new 3x4 matrix with 12 random values generated using the rnorm() function.
new.mat <- matrix(rnorm(12), nrow = 3, byrow = TRUE)
new.mat

# Perform matrix multiplication (using the * sign). 
# Can you do that? How is the operation carried out?
my.mat * new.mat
 
# Perform inner matrix multiplication with the two matrixes. 
# Can you do that? Why? Can you think of something to do to make this possible?
my.mat %*% t(new.mat)
