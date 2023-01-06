
#-----if------
if(A){
  Z
}

num = -3
if(num < 0){
  print("Your number is negative")
}

v = -5
if(v < 0){
  v = v*-1
  print(v)
}


#-----if else------
if(A){
  Scenario 1
} else {
  Scenario 2
}

v = 5
if(v < 0){
  v = v*-1
  print("I have made your object positive. Look:")
  print(v)
} else {
  print("Your object was already positive or zero, so I did nothing")
}

#-----if, else if, else------
v = 0
if(v < 0){
  v = v*-1
  print("less than 0. Wait..... Your number is now positive, Look:")
  print(v)
} else if (v == 0) {
  print("Your object was already zero, so I did nothing")
} else if (v >0) {
  print("Your object was already positive, so I did nothing")
}