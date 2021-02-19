library(digest)




TemperatureClient = R6Class(
  inherit = Observer,
  classname = "TemperatureClient",
  public = list(
    update = function(observable) {
      newVal = observable$getTemperature()
      if (newVal != private$temperature) {
        private$temperature = newVal
        self$printValues()
      }
    },
    printValues = function() {
      print(paste0("The temperature is now ", private$temperature))
    }
  ),
  private = list(
    temperature = 0
  )
)