


Milk = R6Class(
  inherit = DrinkDecorator,
  classname = "Milk",
  public = list(
    initialize = function(drink) {
      super$initialize()
      private$drink = drink
    },
    getDescription = function() {
      description = paste0(private$drink$getDescription(),", Milk")
      return(description)
    },
    getPrice = function() {
      price = private$drink$getPrice() + 1.00
      return(price)
    }
  ),
  private = list(
    drink = NULL
  )
)