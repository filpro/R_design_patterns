DrinkDecorator = R6Class(
  inherit = Drink,
  classname = "DrinkDecorator",
  public = list(
    initialize = function() {
      setAbstract(self, "DrinkDecorator")
      super$initialize()
    },
    getDescription = function() {
      stop("This is an abstract method")
    }
  )
)