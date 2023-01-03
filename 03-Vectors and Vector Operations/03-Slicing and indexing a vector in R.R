

n.deck<-c(6:10)
deck<-c("Duke", "Assasin", "Captain", "Ambassador", "Contessa")


# INDEXING
deck[4]
deck[-4]
deck[c(1,3,5)]

names(n.deck) <- deck
n.deck

n.deck["Assasin"]
n.deck[c("Duke", "Assasin", "Contessa")]


# SLICING
n.deck[3:5]

lv <- seq(10, 100, by = 10)
lv
lv[-(4:7)]
lv[lv > 30]




