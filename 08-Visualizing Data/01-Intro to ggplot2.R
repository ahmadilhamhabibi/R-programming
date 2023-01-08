
library(tidyverse)

hdi = read.csv("hdi-cpi.csv", stringsAsFactors = FALSE)
hdi = as_tibble(hdi)
hdi

sc = ggplot(hdi)
sc

sc = ggplot(hdi, aes(CPI.2015, HDI.2015))
sc

sc + geom_point(aes(color=Region), size = 3) + facet_grid(Region ~.) +
  stat_smooth() + coord_cartesian(xlim = c(0.75, 1))

sc + geom_point(aes(color=Region), size = 3) + stat_smooth() + 
  theme_minimal()