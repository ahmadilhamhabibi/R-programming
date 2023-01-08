
library(tidyverse)

col.1 = c(1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 7)
col.2 = c(1, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7)
col.3 = c(1, 2, 3, 3, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7)

df = data_frame(col.1, col.2, col.3)

summary(df)

pl.1 = ggplot(df, aes(x = col.1)) +
  geom_histogram(binwidth = 1, color = "white", fill = "red4") +
  theme_light() + labs(title = "Positive Skew")

pl.2 = ggplot(df, aes(x = col.2)) +
  geom_histogram(binwidth = 1, color = "white", fill = "red4") +
  theme_light() + labs(title = "Zero Skew")

pl.3 = ggplot(df, aes(x = col.3)) +
  geom_histogram(binwidth = 1, color = "white", fill = "red4") +
  theme_light() + labs(title = "Negative Skew")

# Positive Skew 
pl.1 

# Zero Skew
pl.2

# Negative Skew
pl.3


### Visual examination of the skew

sk1 <- read.csv("skew_1.csv")
sk2 <- read.csv("skew_2.csv")

skew1 <- ggplot(data = sk1, aes(x = `Dataset.1`))
skew1 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()

# The skew of this dataset is positive


skew2 <- ggplot(data = sk2, aes(x = `Dataset.2`))
skew2 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()

# The skew of this dataset is negative

### Numerical examination of the skew 

library(psych)

describe(sk1)
describe(sk2)


