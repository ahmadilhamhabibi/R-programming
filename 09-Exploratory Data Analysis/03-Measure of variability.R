
library(tidyverse)

ny = c(1, 2, 3, 3, 5, 6, 7, 8, 9, 11)
la = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

pizza = data_frame(ny, la)
pizza$ny.mxn = c(18.8, 37.6, 56.4, 56.4, 94.0, 112, 132, 150, 169, 207)
pizza

lapply(pizza, mean)
sapply(pizza, mean)

sapply(pizza, var)
sapply(pizza, sd)
coef.var = sapply(pizza, sd)/sapply(pizza, mean)
coef.var
