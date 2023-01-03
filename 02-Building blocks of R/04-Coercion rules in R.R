# Coercion Rules

# 1. if a vector has even one string element, all other element will be converted to strings

char2 <- c("the answer tp life", "the universe", "and everything", "is", 42)
typeof(char2)
print(char2)

# 2. if a vector has only logical and numeric elements, all logical will be converted to numbers
# TRUE => 1, FALSE => 0

spock <- c(FALSE, TRUE, F, F, 1, 0)
typeof(spock)
print(spock)



