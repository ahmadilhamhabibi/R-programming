title = c("Star Wars", "The Empire Strikes Back", "Return of the Jedi",
          "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
          "The Force Awakens")
year = c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min = c(121, 124, 133, 133, 142, 140, 135)
box.office.mil = c(787, 534, 572, 1027, 657, 849, 2059)

my.data = data.frame(title, year, length.min, box.office.mil)
my.data

names(my.data) = c("Movie Title", "Release Year", "Length in minutes", "Box Office")
my.data

my.data = data.frame(Title = title, Year = year, Length = length.min, Gross = box.office.mil,
                     stringsAsFactors = FALSE)
my.data

str(my.data)


name <- c("VolkswagenTouareg ", "CitroenC3", "AudiA3", "ToyotaYaris", "KiaForte", "DaciaLogan", "NissanPajero")
year <- c(2, 3, 4, 5, 8, 9, 8)
size <- c("medium", "small", "medium", "small", "small", "medium", "extra large")
mpg <- c(25, 47, 27, 36, 31, 2, 36)
geerbox <- c("manual", "manual", "auto", "auto", "manual", "manual", "auto")

cars <- data.frame(year, size, mpg, geerbox)
names(cars) <- c("Year", "Size", "MPG", "Geerbox")
rownames(cars) <- name

# alternative naming

cars <- data.frame(row.names = name, "Year" = year, "Size" = size, "MPG" = mpg, "Geerbox" = geerbox)

levels(cars[, "Geerbox"]) <- c("auto", "manual")
cars

