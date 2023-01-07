
library(tidyverse)
starwars
my.wars = as.data.frame(starwars)
my.wars = my.wars[ ,-(11:13)]
my.wars

head(my.wars)
tail(my.wars)

my.wars[3,9]
my.wars[3, "gender"]

my.wars[5, ]
head(my.wars[ ,1])
head(my.wars[["name"]])

head(my.wars$name)
head(my.wars["name"])

my.wars[c(1:14), c("name", "homeworld")]
