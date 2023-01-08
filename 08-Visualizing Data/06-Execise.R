#-----HISTOGRAM-----
salary = read.csv("employee-data.csv", skip = 23, stringsAsFactors = F)
salary = as_tibble(salary)
salary = filter(salary, salary > 45000)
salary

histogram = ggplot(salary, aes(x=salary))
histogram + geom_histogram(binwidth = 5000, color = "darkslategray",
                           fill = "darkslategray4", alpha = 0.7) + 
  ggtitle("Salary distribution in the employee data") +
  labs(x="Salary", y="Number of employees in the salary bracket") + 
  theme_minimal()


#-----BAR CHART-----
bar = ggplot(salary, aes(title, fill = gender))
bar + geom_bar() +
  labs(y="Count", x= "Job positions", title = "Job positions by gender") + 
  theme_light()

library(tidyverse)
library(ggthemes)

bar <- ggplot(emp, aes(title, fill = gender))
bar + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position")
