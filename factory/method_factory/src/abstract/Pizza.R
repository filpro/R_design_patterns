Pizza = R6Class(
  classname = "Pizza",
  inherit = MasterClass,
  public = list(
    initialize = function() {
      super$initialize()
      setAbstracts(self, "Pizza")
    },
    prepare = function() { print("Preparing...") },
    cook = function() { print("Cooking...") },
    cut = function() { print("Cutting...") },
    pack = function() { print("Packing...") }
  ),
  private = list(
    name = "",
    dough = "",
    sauce = "",
    extras = vector()
  )
)