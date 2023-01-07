title = c("Star Wars", "The Empire Strikes Back", "Return of the Jedi",
          "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
          "The Force Awakens")
year = c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min = c(121, 124, 133, 133, 142, 140, 135)
box.office.mil = c(787, 534, 572, 1027, 657, 849, 2059)

my.data = data.frame(Title = title, Year = year, Length = length.min, Gross = box.office.mil,
                     stringsAsFactors = FALSE)
my.data

mark = c(37.5, 34.75, 34.25, 0, 0, 0.75, 0)
carrie = c(13.5, 22.75, 21.25, 0, 0, 0.5, 5.75)

my.data$MarkScreenTime = mark
my.data$CarrieScreenTime = carrie
my.data

my.data$MarkScreenTime = NULL
my.data$CarrieScreenTime = NULL
my.data

my.data[["MarkScreenTime"]] = mark
my.data[["CarrieScreenTime"]] = carrie
my.data

my.data$MarkScreenTime = NULL
my.data$CarrieScreenTime = NULL
my.data

my.data = cbind(my.data, MarkScreenTime = mark, CarrieScreenTime = carrie)
my.data

# add rows
rogueOne = data.frame(Title = "Rogue One", Year = 2016, Length = 133, Gross = 1051,
                      MarkScreenTime = 0, CarrieScreenTime = 0.25)
rbind(my.data, rogueOne)