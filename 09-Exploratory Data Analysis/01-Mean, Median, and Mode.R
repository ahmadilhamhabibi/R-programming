
library(tidyverse)

ny = c(1, 2, 3, 3, 5, 6, 7, 8, 9, 11, 66)
la = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)

pizza = data_frame(ny, la)
pizza

# MEAN - the simple average
# affected by outliers

mean(pizza$ny)
mean(pizza$la)


# MEDIAN - the middle number in an ordered data set
# not affected by outliers

median(pizza$ny)
median(pizza$la)

# MODE - the value that occurs most often - for categorical data
# no built-in function

x = table(pizza$ny)
x
names(x)[which(x==max(x))]

summary(pizza)
