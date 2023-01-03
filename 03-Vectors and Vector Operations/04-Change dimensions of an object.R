

a <- seq(10, 120, by = 10)
a
dim(a) <- c(3,4)
a

typeof(a)
class(a)


# -----EXERCISE-----
s <- seq(2, 30, by = 2)
s
attributes(s)

dim(s) <- c(3,5)
s

dim(s) <- c(1,3,5)
s


# R creates 3 dimensional object but because the interface is 2-D, when asked to print it, 
# it returns slice-by-slice image 

# Multi-dimensional data structures can be useful for collecting/storing multi-dimensional data
# e.g. water pressure in different locations in a tank
# or for data that is best stored and accessed in a multidimensional array
# e.g. colors & their RBG spectrums