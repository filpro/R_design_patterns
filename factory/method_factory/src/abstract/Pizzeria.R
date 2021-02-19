Pizzeria = R6Class(
  classname = "Pizzeria",
  inherit = MasterClass,
  public = list(
    initialize = function() {
      className = getR6Class(self)
      if (className == "Pizzeria")
        stop(paste(className, "is an abstract class that can't be initialized."))
    },
    orderPizza = function(type) {
      pizza = self$createPizza(type)

      pizza$prepare()
      pizza$cook()
      pizza$cut()
      pizza$pack()

      return(pizza)
    },
    createPizza = function(type) {
      stop("This is an abstract metnod")
    }
  )
)