Pizza = R6Class(
  classname = "Pizza",
  public = list(
    initialize = function() {
      className = getR6Class(self)
      if (className == "Pizza")
        stop(paste(className, "is an abstract class that can't be initialized."))
    },
    prepare = function() { print("Preparing...") },
    cook = function() { print("Cooking...") },
    cut = function() { print("Cutting...") },
    pack = function() { print("Packing...") }
  )
)