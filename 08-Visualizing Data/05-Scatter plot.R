library(tidyverse)

hdi = read.csv("hdi-cpi.csv", stringsAsFactors = FALSE)
hdi = as_tibble(hdi)
hdi

sp = ggplot(hdi, aes(CPI.2015, HDI.2015))
sp + geom_point(aes(color = Region), shape = 21, 
                fill = "white", size = 3, stroke = 2) + 
  theme_light() + 
  labs(x = "Corruption Perception Index, 2015",
       y = "Human Development Index, 2015",
       title = "Corruption and Development") +
  stat_density_2d()
