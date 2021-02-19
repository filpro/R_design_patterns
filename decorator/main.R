source('MasterClass.R')
files.sources = list.files('decorator/abstract', full.names = T)
files.sources =  c(files.sources,list.files('decorator/decored', full.names = T))
files.sources =  c(files.sources,list.files('decorator/decorators', full.names = T))
sapply(files.sources, source)


drink = Espresso$new()

drink2 = Espresso$new()
drink2 = Chocolate$new(drink2)
drink2 = SoyMilk$new(drink2)
drink2 = Milk$new(drink2)

drink2$getDescription()
drink2$getPrice()

drink3 = CoolExtraCoffee$new()

drink3 = SoyMilk$new(drink3)
drink3 = SoyMilk$new(drink3)
drink3 = SoyMilk$new(drink3)
drink3 = Cream$new(drink3)
drink3 = Discount$new(drink3)

drink3$getDescription()
drink3$getPrice()
