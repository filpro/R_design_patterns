AmericanPizzeria = R6Class(
  classname = "ItalianPizzeria",
  inherit = Pizzeria,
  public = list(
    createPizza = function(type) {
      pizza = NULL
      if (type == "cheese") {
        pizza = AmericanCheesePizza$new()
      } else if (type == "pepperoni") {
        pizza = AmericanPepperoniPizza$new()
      } else if (type == "seafood") {
        pizza = AmericanSeaFoodPizza$new()
      } else if (type == "vegetarian") {
        pizza = AmericanVegetarianPizza$new()
      }
      return(pizza)
    }
  )
)