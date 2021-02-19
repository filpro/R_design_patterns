ItalianPizzeria = R6Class(
  classname = "ItalianPizzeria",
  inherit = Pizzeria,
  public = list(
    createPizza = function(type) {
      pizza = NULL
      if (type == "cheese") {
        pizza = ItalianCheesePizza$new()
      } else if (type == "pepperoni") {
        pizza = ItalianPepperoniPizza$new()
      } else if (type == "seafood") {
        pizza = ItalianSeaFoodPizza$new()
      } else if (type == "vegetarian") {
        pizza = ItalianVegetarianPizza$new()
      }
      return(pizza)
    }
  )
)