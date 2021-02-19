


Cream = R6Class(
  inherit = DrinkDecorator,
  classname = "Cream",
  public = list(
    initialize = function(drink) {
      super$initialize()
      private$drink = drink
    },
    getDescription = function() {
      description = paste0(private$drink$getDescription(),", Cream")
      return(description)
    },
    getPrice = function() {
      price = private$drink$getPrice() + 0.50
      return(price)
    }
  ),
  private = list(
    drink = NULL
  )
)