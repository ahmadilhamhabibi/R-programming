#-----VECTOR operation happen in ELEMENT-WISE fashion---------------

vec <- c(1,2,3)
vic <- c(11,12,13)

vec + vic
vic - vec

vec * vic
vic / vec

mean(vic)
median(vic)
sd(vic)

sum(vec)
prod(vic)

min(vic)
max(vic)



#-------------VECTOR RECYCLING---------------

weight <- c(71, 67, 83, 67)
height <- c(1.75, 1.81, 1.78, 1.82, 1.97, 2.21, 1.75)

bmi <- weight / (height * height)

print(bmi)

# R still carried out the operation, but it recycled the weight object to match the length
# of the height vector
# For the purposes of this operation, the weight vector looked like this: 71, 67, 83, 67, 71, 67, 83 


#-------------NAMING VECTOR---------------

age <- c(23, 26, 24, 26)

attributes(age)
names(age)

names(age) <- c("George", "John", "Paul", "Ringo")
age


attributes(age)
names(age)

names(age) <- c("George Harrison", "John Lennon", "Paul McCartney", "Ringo Starr")
age

names(age) <- NULL
age

attributes(age)
