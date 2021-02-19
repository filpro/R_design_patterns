Drink = R6Class(
  classname = "Drink",
  inherit = MasterClass,
  public = list(
    initialize = function() {
      setAbstract(self, "Drink")
      super$initialize()
    },
    getPrice = function() {
      stop("This is an abstract method")
    },
    getDescription = function() {
      return(private$description)
    }
  ),
  private = list(
    description = "Unknown drink"
  )
)