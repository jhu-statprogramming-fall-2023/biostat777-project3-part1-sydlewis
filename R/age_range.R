#' Age Range
#'
#' Prints the age range for a specific age, when following the "Half-Your-Age-Plus-Seven" Rule
#'
#' @details
#' @param age numeric, the age the the output will be relative to
#'
#' @return The ages that are the appropriate age range for the age entered
#'
#' @import
#' @export
#'
#' @examples
#' age_range(28)
#'
#' age_range(16)
#'
#' age_range(85)
#'

age_range <- function(age) {
    if (!is.numeric(age)) {
      stop("Error: the age must be a numeric value")
    }

    below_18 <- age < 18
    if (any(below_18)) {
      stop("Error: all ages must be 18 or greater")
    }

    lower_limit <- lower_limit(age)
    upper_limit <- upper_limit(age)

    return(c(lower_limit = lower_limit, upper_limit = upper_limit))
}
