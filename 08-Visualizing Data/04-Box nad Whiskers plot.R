library(tidyverse)

df = read.csv("titanic.csv", stringsAsFactors = FALSE)
df = as_tibble(df)

df$Survived = as.factor(df$Survived)
df$Pclass = as.factor(df$Pclass)
df$Sex = as.factor(df$Sex)
df$Embarked = as.factor(df$Embarked)
df

my.box = ggplot(df, aes(x = Survived, y = Age))
my.box + geom_boxplot(outlier.colour = "red", outlier.shape = 4) + 
  geom_jitter(width = 0.2, aes(color = Sex))
  labs(title = "Survival Rate on the Titanic Based on Age and Gender") +
  theme_light() 
  