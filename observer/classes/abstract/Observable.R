# Title     : TODO
# Objective : TODO
# Created by: ZA9
# Created on: 10/13/2020

Observable = R6Class(
  inherit = MasterClass,
  classname = "Observable",
  public = list(
    initialize = function() {
      super$initialize()
      setAbstract(self,"Observable")
    },
    attach = function(observer) {
      hash = observer$getHash()
      private$observers[[hash]] = observer
    },
    detach = function(observer) {
      hash = observer$getHash()
      private$observers[[hash]] = NULL
    },
    notify = function() {
      for (observerHash in names(private$observers)) {
        observer = private$observers[[observerHash]]
        observer$update(self)
      }
    }
  ),
  private = list(
    observers = list()
  )
)