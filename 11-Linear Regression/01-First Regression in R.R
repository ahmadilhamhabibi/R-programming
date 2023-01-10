
library(tidyverse)

college = read.csv("regression_example.csv")
college

linmod = lm(GPA ~ SAT, data = college)

ggplot(college, aes(SAT, GPA)) +
  geom_point() +
  theme_light() +
  labs(x = "SAT Score",
       y = "GPA upon graduation",
       title = "SAT and GPA") +
  stat_smooth(method = "lm", se = FALSE)

summary(linmod)
