


SoyMilk = R6Class(
  inherit = DrinkDecorator,
  classname = "SoyMilk",
  public = list(
    initialize = function(drink) {
      super$initialize()
      private$drink = drink
    },
    getDescription = function() {
      description = paste0(private$drink$getDescription(),", SoyMilk")
      return(description)
    },
    getPrice = function() {
      price = private$drink$getPrice() + 2.20
      return(price)
    }
  ),
  private = list(
    drink = NULL
  )
)