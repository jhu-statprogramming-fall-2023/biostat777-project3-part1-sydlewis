#' Upper Age Limit
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

upper_limit <- function(age){
  if (!is.numeric(age)){
    stop("Error: the age must be a numeric value")
  }

  below_18 <- age < 18
  if (any(below_18)) {
    stop("Error: all ages must be 18 or greater")
  }

  upper_lim <- (age - 7) * 2

  return(upper_lim)
}
