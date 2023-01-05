#-----CREATING A MATRIX-----
Player <- c("dark", "dark", "dark", "dark", "dark", "light", "light", "light", "light", "light")
Piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

# create matrix with dim()
chess<-c(Player, Piece)
dim(chess) <- c(10, 2)
colnames(chess) <- c("Player", "Piece")
chess

# create matrix with matrix()
chess.mat <- matrix(chess, nrow = 10, dimnames = list(NULL, c("Player", "Piece")))
chess.mat


# create matrix with cbind()
chess.bind = cbind("Player" = Player, "Piece" = Piece)
chess.bind


#-----Slicing and Indexing Matrix-----
chess <- t(chess)
chess

turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)

chess <- rbind(chess, "Turn" = turn)
chess <- t(chess)
chess

#The first piece of the light player
chess[6, 2]

#The Player and Piece columns
chess[ ,1:2]
chess[ ,-3]

#All the information about the dark player
chess[1:5, ]

#The Pieces column; try to extract that as a matrix (Hint: lookup the drop = argument)
chess[ , 2, drop = F]

#Everything but the Piece column
chess[ , -2, drop = F]

#The 1st and 3rd values on the second row
chess[ 2, c(1,3)]

#Replace the 3rd value on the 7th row with 3 (Hint: works just like creating an object)
chess[7,3] <- 3
chess
