
# create matrix with matrix() function
mtrx <- matrix(1:12, nrow = 3)
mtrx
mtrx <- matrix(1:12, ncol = 4)
mtrx
mtrx <- matrix(1:12, ncol = 4, byrow = TRUE)
mtrx


# create matrix with cbind() function
usa <- c(1.3, 1.5, 1.2, 1.4, 1.5)
usa
de <- c(0.2, 0.4, 0.7, 0.8, 0.8)
de

ngo <- cbind(usa, de)
ngo

# naming columns and rows
rownames(ngo) <- c("2013", "2014", "2015", "2016", "2017")
ngo


# transposes 
ngo <- t(ngo)
ngo


# create matrix with rbind() function
ind <- c(2, 2.2, 2.4, 2.5, 2.6)
ngo <- rbind(ngo, ind)
ngo


# create matrix with single-line code 
gdp <- matrix(c(47.9, 41.2, 41.9, 54.6, 56.2, 57.5, 1.6, 1.6, 1.7),
              nrow = 3, byrow = TRUE,
              dimnames = list(c("de", "usa", "ind"),
                              c("2014", "2015", "2016")))
gdp





