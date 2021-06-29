set.seed(12234)
monty <- function(switch=F) {
  doors = sample(c('car', 'goat', 'goat'), 3)
  pick = sample(1:3, 1)
  
  if (switch) {
    # if you sitch after Monty showed you a goat behind the otehr two doors,
    # you win if the car is not behind picked doors
    doors[pick] != 'car'
  } else {
    doors[pick] == 'car'
  }
}

no_switch = sapply(1:1000, FUN=function(i) monty())
switch = sapply(1:1000, FUN=function(i) monty(switch=T))

c(mean(no_switch), mean(switch))


# 0.346, 0.691