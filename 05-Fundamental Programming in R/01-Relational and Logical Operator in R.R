

#-----Relational Operators------

# ==
3 == 3
"cat" == "car"
TRUE == TRUE
TRUE == FALSE

# !=
"sugar" != "salt"
3 != 3
TRUE != FALSE

# <
17 < 21
17 < 15
"rat" < "cat"   #alphabetically
TRUE < FALSE    #coersion (T=1, F=0)

# >
17 > 21
17 > 15
"rat" > "cat"   #alphabetically
TRUE > FALSE    #coersion (T=1, F=0)

# <=
17 <= 17

# >=
17 >= 17



#-----Relational Operators------

# AND "&" =====> exclusive,  TRUE if TRUE & TRUE
w <- 9
(w<12) & (w>6)
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE

# OR "|"  =====> inclusive,  TRUE if any TRUE
(w<1) | (w>6)
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE

# NOT "!" =====> flips the result,  TRUE if FALSE
!(4 < 3)



#----- VECTOR AND LOGICAL OPERATOR
v = c(1, 3, 5, 7)
w = c(1, 2, 3, 4)

3 == v
3 == w

12 > c(11, 12, 13, 14)

"aku" == c("aku", "bisa", "belajar", "RRRRRR")

c(11, 13, 14) <= c(11, 12, 13)


# Explain the difference between | , || , & and &&

# Answer:
# Single operators (|, &) can return a vector

((-2:2) >= 0) & ((-2:2) <= 0)
# FALSE FALSE  TRUE FALSE FALSE

# Double operators (||, &&) return a single value
((-2:2) >= 0) && ((-2:2) <= 0)
# FALSE
