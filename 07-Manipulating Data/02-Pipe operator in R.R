
library(tidyverse)
star = starwars


star.species = group_by(star, species)
star.smr = summarize(star.species, count = n(), avg.mass = mean(mass, na.rm = T))
filter(star.smr, count > 1)

# Nested Operation
filter(summarize(group_by(star, species), count = n(), avg.mass = mean(mass, na.rm = T)), count > 1)

# Pipe Operation
star %>%
  group_by(species) %>%
  summarize(count = n(), avg.mass = mean(mass, na.rm = T)) %>%
  filter(count > 1)
