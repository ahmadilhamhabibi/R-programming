

eg.na = c(NA, 1:10)
eg.na
mean(eg.na)
mean(eg.na, na.rm = TRUE)

is.na(eg.na)


library(tidyverse)
starwars
my.wars = as.data.frame(starwars)
my.wars = my.wars[ ,-(11:13)]
head(my.wars)
is.na(my.wars)
any(is.na(my.wars))

any(is.na(my.wars$name))
any(is.na(my.wars[ ,c("height", "mass", "skin_color")]))

my.wars$mass[is.na(my.wars$mass)] = "No Mass"
subset(my.wars, mass == "No Mass")
