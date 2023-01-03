employee_names <- c("Ahmad", "Ilham", "Habibi", "Emma", "Febryanti")
typeof(employee_names)

salary <- c(2000, NA, 3000, NA, 4000)
typeof(salary)


employee <- c(employee_names, salary)
typeof(employee)


# COERCION EXERCICE
yearly_bonus <- c(T, T, T, F, F)

coerce_check <- c(salary, yearly_bonus)
typeof(coerce_check)
print(coerce_check)


# FUNCTION EXERCISE
years_of_experience <- c(8, 9 , 10, 10, 5)

sum(years_of_experience)
mean(years_of_experience)
median(years_of_experience)
length(years_of_experience)
sd(years_of_experience)
round(sd(years_of_experience))
print(round(sd(years_of_experience)))

args(sample)

args(median)
median(years_of_experience, na.rm = TRUE)

median(salary)
median(salary, na.rm = TRUE)
