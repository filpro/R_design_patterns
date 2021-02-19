source('MasterClass.R')
files.sources =  list.files('factory/method_factory/src', full.names = T, recursive = T)
sapply(files.sources, source)

italianPizzeria = ItalianPizzeria$new()
americanPizzeria = AmericanPizzeria$new()

pizza = italianPizzeria$orderPizza("cheese")

pizza2 = americanPizzeria$orderPizza("pepperoni")