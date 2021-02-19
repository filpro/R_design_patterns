# Title     : TODO
# Objective : TODO
# Created by: ZA9
# Created on: 10/13/2020


Observer = R6Class(
  inherit = MasterClass,
  classname = "Observer",
  public = list(
    initialize = function(observable = NULL) {
      super$initialize()
      setAbstract(self, "Observer")
      self$subscribe(observable)
    },
    unsubscribe = function(observable) {
      hash = observable$getHash()
      observable$detach(self)
      private$observable[[hash]] = NULL
    },
    subscribe = function(observable = NULL) {
      if (!is.null(observable)) {
        hash = observable$getHash()
        private$observable[[hash]] = observable
        observable$attach(self)
      }
    },
    update = function(observable) {
      stop("Update method must be implmenented")
    }
  ),
  private = list(
    observable = list()
  )
)
