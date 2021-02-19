library(digest)


HumidityClient = R6Class(
  inherit = Observer,
  classname = "HumidityClient",
  public = list(
    update = function(observable) {
      newVal = observable$getHumidity()
      if (newVal != private$humidity) {
        private$humidity = newVal
        self$printValues()
      }
    },
    printValues = function() {
      print(paste0("The humidity is now ", private$humidity))
    }
  ),
  private = list(
    humidity = 0
  )
)