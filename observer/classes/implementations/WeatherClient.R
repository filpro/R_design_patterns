library(digest)




WeatherClient = R6Class(
  inherit = Observer,
  classname = "WeatherClient",
  public = list(
    update = function(observable) {
      if (observable$hash() != private$stateHash) {
        private$temperature = observable$getTemperature()
        private$humidity = observable$getHumidity()
        private$pressure = observable$getPressure()
        private$stateHash = observable$hash()
        self$printValues()
      }
    },
    printValues = function() {
      print(
        paste0(
          "The temperature is now: ", private$temperature,
          ", humidity: ", private$humidity,
          ", pressure: ", private$pressure
        )
      )
    }
  ),
  private = list(
    temperature = 0,
    humidity = 0,
    pressure = 0,
    stateHash = ""
  )
)


