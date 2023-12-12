#' Returns Upper Age Limit of Age Range
#'
#' Prints the upper age limit for a specific age, when following the "Half-Your-Age-Plus-Seven" Rule
#'
#' @details
#' @param age numeric, the age the the output will be relative to
#'
#' @return The age that is the upper limit for the age entered
#'
#' @import
#' @export
#'
#' @examples
#' upper_limit(30)
#'
#' upper_limit(15)
#'
#' upper_limit(57)
#'

upper_limit <- function(age){
  if (!is.numeric(age)){
    stop("Error: the age must be a numeric value")
  }

  below_14 <- age < 14
  if (any(below_14)) {
    stop("Error: all ages must be 14 or greater")
  }

  upper_lim <- (age - 7) * 2

  return(upper_lim)
}
