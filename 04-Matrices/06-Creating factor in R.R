

marital.status <- c("Married", "Married", "Single", "Married", "Divorced", "Widowed", "Divorced")

str(marital.status)

marital.factor <- factor(marital.status)
marital.factor

typeof(marital.factor)
str(marital.factor)

new.factor <- factor(marital.status,
                     levels = c("Single", "Married", "Divorced", "Widowed"))
str(new.factor)

levels(new.factor) <- c("s", "m", "d", "w")
str(new.factor)\

new.factor <- factor(marital.status,
                     levels = c("Single", "Married", "Divorced", "Widowed"),
                     labels = c("Sin", "Mar", "Div", "Wid"))
str(new.factor)

ordered.factor <- factor(marital.status, ordered = T,
                     levels = c("Single", "Married", "Divorced", "Widowed"))

str(ordered.factor)
