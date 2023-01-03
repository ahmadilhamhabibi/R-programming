a <- 1:10
bob <- 7

is.vector(a)

is.vector(bob)

# Six type of vectors = 1. Integer, 2. Double, 3. Character, 4. Logical, 5. Complex, 6. Row

# 1. Integer : whole number; whit nothing after the decimal
int <- c(5L, 6L, 7L, 8L)      # with "L" to tell integer type
typeof(int)

# 2. Double : store regular numbers (large, small, positive, negative, with or without decimal digits)
# the default in R is double
double <- c(5, 6, 7, 8)
typeof(double)

# 3. Character : store text data
char <- c("R", "for", "life")
typeof(char)

char2 <- c("the answer tp life", "the universe", "and everything", "is", "42")
typeof(char2)


# 4. Logical : store Boolean data (TRUE T and FALSE F)
spock <- c(FALSE, TRUE, F, F, T, FALSE)
typeof(spock)
