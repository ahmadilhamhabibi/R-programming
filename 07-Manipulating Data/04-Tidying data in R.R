
library(tidyverse)

# GATHER
billboard = read.csv("billboard.csv", stringsAsFactors = FALSE)
billboard = as.tibble(billboard)
billboard

billboard %>% gather(x1st.week:x76th.week, key = "week", value = "rank", na.rm = T) %>%
  arrange(artist.inverted)


# SEPARATE
tb = read.csv("tb.csv")
tb = as.tibble(tb)
tb

tb.gathered = tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = T) %>%
  arrange(country)

tb.gathered


tb.separated = tb.gathered %>% separate(column, into = c("sex", "age"))
tb.separated

tb.separated$age = str_replace_all(tb.separated$age, "0", "0-")
tb.separated$age = str_replace_all(tb.separated$age, "15", "15-")
tb.separated$age = str_replace_all(tb.separated$age, "25", "25-")
tb.separated$age = str_replace_all(tb.separated$age, "35", "35-")
tb.separated$age = str_replace_all(tb.separated$age, "45", "45-")
tb.separated$age = str_replace_all(tb.separated$age, "55", "55-")
tb.separated$age = str_replace_all(tb.separated$age, "65", "65-100")

tb.separated


# UNITE
tb.separated = tb.separated %>% separate(age, into = c("age.low", "age.high"))
tb.separated

tb.united = tb.separated %>% unite("age_new", c("age.low", "age.high"))
tb.united

# SPREAD
weather = read.csv("weather.csv")
weather =as.tibble(weather)
weather

weather.spread = spread(weather, key = element, value = value)
weather.spread


