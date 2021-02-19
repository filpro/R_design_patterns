ItalianCheesePizza = R6Class(
  classname = "ItalianCheesePizza",
  inherit = Pizza,
  public = list(
    initialize = function() {
      private$name = "Italian cheese pizza with marinara souce"
      private$dough = "Thin, crispy dough"
      private$sauce = "Marinara sauce"

      private$extras = c(private$extras,"Reggiano cheese")
    }
  )
)

AmericanCheesePizza = R6Class(
  classname = "AmericanCheesePizza",
  inherit = Pizza,
  public = list(
    initialize = function() {
      private$name = "American cheese pizza"
      private$dough = "Extra large crispy dough"
      private$sauce = "Standard tomato sauce"

      private$extras = c(private$extras,"Mozzarella cheese")
    },
    cut = function() {
      print("Cutting into square pieces...")
    }
  )
)


ItalianPepperoniPizza = R6Class(
  classname = "ItalianPepperoniPizza",
  inherit = Pizza,
  public = list(
    initialize = function() {
      private$name = "Italian pepperoni pizza with marinara souce"
      private$dough = "Thin, crispy dough"
      private$sauce = "Carbonara sauce"

      private$extras = c(private$extra,"Reggiano cheese")
    }
  )
)

AmericanPepperoniPizza = R6Class(
  classname = "AmericanPepperoniPizza",
  inherit = Pizza,
  public = list(
    initialize = function() {
      private$name = "American pepperoni pizza"
      private$dough = "Extra large crispy dough"
      private$sauce = "Spicy tomato sauce"

      private$extras = c(private$extras,"Extra salami", "Mozzarella cheese")
    },
    cut = function() {
      print("Cutting into square pieces...")
    }
  )
)