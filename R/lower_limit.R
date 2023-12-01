#' Lower Age Limit
#'
#' Prints the lower age limit for a specific age, when following the "Half-Your-Age-Plus-Seven" Rule
#'
#' @details
#' @param age numeric, the age the the output will be relative to
#'
#' @return The age that is the lower limit for the age entered
#'
#' @import
#' @export
#'
#' @examples
#' lower_limit(30)
#'

lower_limit <- function(age){
  if (!is.numeric(age)){
    stop("Error: the age must be a numeric value")
  }

  lower_lim <- age / 2 + 7

  return(lower_lim)
}
