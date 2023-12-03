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

age_range <- function(age) {
    if (!is.numeric(age)) {
      stop("Error: the age must be a numeric value")
    }

    lower_limit <- lower_limit(age)
    upper_limit <- upper_limit(age)

    result <- paste(
      "According to the 'Half-Your-Age-Plus-Seven' Rule, a person of",
      age,
      "years may be in a relationship with someone as young as",
      lower_limit,
      "years and as old as",
      upper_limit,
      "years.")

    return(result)
}
