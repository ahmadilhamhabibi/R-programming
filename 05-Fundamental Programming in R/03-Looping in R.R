
# FOR LOOP
for(value in x){
  y
}

title = c("aku", "bisa", "belajar", "RRRRRRRR")

for(word in title){
  print("bisa dooong")
}


# Write a for loop that sums all the numbers from 1 to n 

n <- 10
sum <- 0

for(i in 1:n){
  sum <- sum + i
  print(sum)
} 


# WHILE LOOP
n = -12

while (n < 0) {
  print(paste("Your value equals", n))
  n = n+1
}

# Write a while loop that sums all the numbers from 1 to n 

n <- 10
i <- 1
sum <- 0

while(i <= n){
  sum <- sum + i
  i <- i + 1
  print(sum)
}


# REPEATE LOOP
n = -12

repeat {
  print(paste("Your value equals", n))
  n = n+1
  if (n >= 0) {
    print("N is now either 0 or postive number")
    print("The loop will be broken")
    break
  }
}
