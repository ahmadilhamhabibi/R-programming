
library(tidyverse)

df = read.csv("titanic.csv", stringsAsFactors = FALSE)
df = as_tibble(df)

df$Survived = as.factor(df$Survived)
df$Pclass = as.factor(df$Pclass)
df$Sex = as.factor(df$Sex)
df$Embarked = as.factor(df$Embarked)
df

bar = ggplot(df, aes(x = Survived, fill = Sex))
bar + geom_bar() + theme_light() + 
  labs(y = "Passenger Count", title = "Survival Rate on the Titanic")

bar = ggplot(df, aes(x = Sex, fill = Survived))
bar + geom_bar() + theme_light() + 
  labs(y = "Passenger Count", 
       x = "Gender",
       title = "Survival Rate by Gender") +
  facet_wrap(Sex ~ Pclass)





