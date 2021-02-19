library(R6)
library(magrittr)
library(digest)
library(pryr)
library(RSmisc)
source("R6Extended.R")

setAbstract = function(r6class, refClassName) {
  className = getR6Class(r6class)
  if (className == refClassName)
    stop(paste(className, "is an abstract class that can't be initialized."))
}

MasterClass = R6Class(
  classname = "MasterClass",
  inherit = r6extended,
  public = list(
    initialize = function() {
      setAbstract(self, "MasterClass")
      private$hashed = self$hash()
    },
    hash = function() {
      digest(list(address(self), self))
    },
    getHash = function() {
      private$hashed
    }
  ),
  private = list(
    hashed = NA
  )
)



