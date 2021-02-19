Espresso = R6Class(
  inherit = Drink,
  classname = "Espresso",
  public = list(
    initialize = function() {
      super$initialize()
      private$description = "Espresso"
    },
    getPrice = function() {
      return(1.98);
    }
  )
)