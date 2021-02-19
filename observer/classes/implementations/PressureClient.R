library(digest)



PressureClient = R6Class(
  inherit = Observer,
  classname = "PressureClient",
  public = list(
    update = function(observable) {
      newVal = observable$getPressure()
      if (newVal != private$pressure) {
        private$pressure = newVal
        self$printValues()
      }
    },
    printValues = function() {
      print(paste0("The pressure is now ", private$pressure))
    }
  ),
  private = list(
    pressure = 0
  )
)


