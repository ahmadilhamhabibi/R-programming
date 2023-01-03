
# BUILDING A FUNCTION

deck <- c("Duke", "Assasin", "Captain", "Ambassador", "Contessa")
print(deck)

hand <- sample(deck, size = 3, replace = TRUE)
print(hand)

# FUNCTION IN R ==> name + body of code + argument

draw <- function(){
  deck <- c("Duke", "Assasin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, size = 3, replace = TRUE)
  print(hand)
}

draw()


# EXERCISE
flip <- function(){
  coin <- c("heads", "tails")
  toss <- sample(coin, 100, replace = TRUE, prob = c(0.3, 0.7))
  return(toss)
}

flip()