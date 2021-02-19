# Title     : TODO
# Objective : TODO
# Created by: ZA9
# Created on: 10/21/2020

test = R6Class(
  classname = "test",
  public = list(
    addThis = function(x, y) {
      return(x + y)
    },
    publicPrice = 30
  ),
  private = list(
    subtractThis = function(x, y) {
      return(x - y)
    },
    privatePrice = 999
  )
)

x = test$new()
x$addThis(1,2)
x$addThis(1,3)


x = Blablabla

y = rnorm(1030, 300, 200)

Blablabla

