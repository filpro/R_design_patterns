

source('MasterClass.R')
files.sources =  list.files('factory/simple_factory/src', full.names = T, recursive = T)
sapply(files.sources, source)




pizzaFactory = SimpleFactoryPizza$new()
pizzeria = Pizzeria$new(pizzaFactory)
pizzeria$orderPizza("pepperoni")
