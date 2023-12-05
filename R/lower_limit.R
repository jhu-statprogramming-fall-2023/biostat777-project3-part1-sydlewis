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
#' lower_limit(17)
#'
#' lower_limit(99)
#'

lower_limit <- function(age) {
  if (!is.numeric(age)) {
    stop("Error: the age must be a numeric value")
  }

  below_18 <- age < 18
  if (any(below_18)) {
    stop("Error: all ages must be 18 or greater")
  }

  lower_lim <- age / 2 + 7
  lower_lim <- pmax(lower_lim, 18)  # Ensure the result is at least 18 for each element

  return(lower_lim)
}
