library(digest)

WeatherStation = R6Class(
  inherit = Observable,
  classname = "WeatherStation",
  public = list(
    setMeasures = function(newTemperature, newHumidity, newPressure) {
      private$temperature = newTemperature
      private$humidity = newHumidity
      private$pressure = newPressure
      self$notify()
    },
    getTemperature = function() {
      private$temperature
    },
    getHumidity = function() {
      private$humidity
    },
    getPressure = function() {
      private$pressure
    },
    hash = function() {
      digest(
        list(
          private$temperature,
          private$humidity,
          private$pressure)
      )
    }
  ),
  private = list(
    temperature = NA,
    humidity = NA,
    pressure = NA
  )
)