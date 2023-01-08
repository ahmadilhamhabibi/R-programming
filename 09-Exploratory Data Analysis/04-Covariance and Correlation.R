
library(tidyverse)

homes = read.csv("landdata-states.csv", stringsAsFactors = FALSE)
homes

homes %>% subset(Date == 2001.25) %>% ggplot(aes(y = Structure.Cost, 
                                                 x = log(Land.Value))) +
  geom_point() + theme_light() + labs(x = "land Value (transformed)",
                                      y = "Structur Cost (USD)",
                                      title = "Relationship between land value and structur cost")

cor(homes$Structure.Cost, homes$Land.Value)
cor.test(homes$Structure.Cost, homes$Land.Value)
