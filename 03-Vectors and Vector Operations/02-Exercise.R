employee_names  <- c("Belinda Johnes","Maria Delar", "Math Smith", "Matt Williams", "Robert Mathews",
                     "Julia Walters", "Andrea Cheng", "July Horitz", "Danielle Muller", "Esteban Lugo")
salary <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)

names(salary) <- employee_names 
attributes(salary)
names(salary)
salary 

names(salary) <- NULL
salary 

# SLICING AND INDEXING

salary

salary[6]
salary[-2]
salary[c(1,3,5,7,9)]
salary[-c(4,5,6)]
salary[salary > 2000]
