source('MasterClass.R')
files.sources = list.files('observer/classes/abstract', full.names = T)
files.sources =  c(files.sources,list.files('observer/classes/implementations', full.names = T))
sapply(files.sources, source)


observable = WeatherStation$new()
observerAll = WeatherClient$new(observable)
observerPressure = PressureClient$new(observable)
observerHumidity = HumidityClient$new(observable)
observerTemperature = TemperatureClient$new(observable)

observable$setMeasures(newTemperature = 323322, newHumidity = 233, newPressure = 9)


