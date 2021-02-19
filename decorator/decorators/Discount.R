Discount = R6Class(
  inherit = DrinkDecorator,
  classname = "Discount",
  public = list(
    initialize = function(drink) {
      super$initialize()
      private$drink = drink
    },
    getDescription = function() {
      description = paste0(private$drink$getDescription(), ", discounted by 50%")
      return(description)
    },
    getPrice = function() {
      price = private$drink$getPrice() * 0.5
      return(price)
    }
  ),
  private = list(
    drink = NULL
  )
)