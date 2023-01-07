

my.pok = read.table("pokRdex_comma.csv",
                    sep = ",",
                    header = TRUE,
                    stringsAsFactors = FALSE)

my.pok = read.csv("pokRdex_comma.csv", stringsAsFactors = FALSE, nrows = 100)
my.pok

#----Export

title = c("Star Wars", "The Empire Strikes Back", "Return of the Jedi",
          "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
          "The Force Awakens")
year = c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min = c(121, 124, 133, 133, 142, 140, 135)
box.office.mil = c(787, 534, 572, 1027, 657, 849, 2059)

my.data = data.frame(title, year, length.min, box.office.mil)
my.data

write.csv(my.data, file="MyFirstDataFrame.csv", row.names = FALSE)


#-----EXERCISE-----

employee.data = read.csv("employee_data.csv", skip = 23, 
                         stringsAsFactors = FALSE, nrows = 200)
employee.data

names(employee.data) = c("Employee number", "First name", "Last name", "Birth date", 
                         "Gender", "Job title", "Salary", "From date", "To date")

employee.data

write.csv(employee.data, file="employee_data_exercise.csv", row.names = FALSE)

