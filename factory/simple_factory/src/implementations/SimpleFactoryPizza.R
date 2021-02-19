SimpleFactoryPizza = R6Class(
  classname = "SimpleFactoryPizza",
  public = list(
    createPizza = function(type) {
      pizza = NULL
      if(type == "cheese") {
        pizza = CheesePizza$new()
      } else if (type == "pepperoni") {
        pizza = PepperoniPizza$new()
      } else if (type == "seafood") {
        pizza = SeaFoodPizza$new()
      } else if (type == "vegetarian") {
        pizza = VegetarianPizza$new()
      }
      return(pizza)
    }
  )
)