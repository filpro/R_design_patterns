


Chocolate = R6Class(
  inherit = DrinkDecorator,
  classname = "Chocolate",
  public = list(
    initialize = function(drink) {
      super$initialize()
      private$drink = drink
    },
    getDescription = function() {
      description = paste0(private$drink$getDescription(),", Chocolate")
      return(description)
    },
    getPrice = function() {
      price = private$drink$getPrice() + 0.20
      return(price)
    }
  ),
  private = list(
    drink = NULL
  )
)