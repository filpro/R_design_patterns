Pizzeria = R6Class(
  classname = "Pizzeria",
  public = list(
    initialize = function(simpleFactoryPizza) {
      private$simpleFactoryPizza = simpleFactoryPizza
    },
    orderPizza = function(type) {
      pizza = private$simpleFactoryPizza$createPizza(type)
      pizza$prepare()
      pizza$cook()
      pizza$cut()
      pizza$pack()
      return(paste0("Prepared pizza: ", type))
    }
  ),
  private = list(
    simpleFactoryPizza = NULL
  )
)