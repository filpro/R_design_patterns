CoolExtraCoffee = R6Class(
  inherit = Drink,
  classname = "CoolExtraCoffee",
  public = list(
    initialize = function() {
      super$initialize()
      private$description = "CoolExtraCoffee"
    },
    getPrice = function() {
      return(4.50)
    }
  )
)