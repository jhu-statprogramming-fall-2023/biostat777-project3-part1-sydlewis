#' Check Couple
#'
#' Using the "Half-Your-Age-Plus-Seven" Rule, the function returns the "verdict" given two ages for the members of a couple
#'
#' @details
#' @param age1 numeric, the age of the first member of the couple
#' @param age2 numeric, the age of the second member of the couple
#'
#' @return The verdict about the couple's ages using the "Half-Your-Age-Plus-Seven" Rule
#'
#' @import
#' @export
#'
#' @examples
#' check_couple(70, 30)
#'
#' check_couple(16, 19)
#'
#' check_couple(50, 80)
#'
#'

check_couple <- function(age1, age2) {
  # Make sure both age1 and age2 are numeric
  if (!is.numeric(age1) || !is.numeric(age2)) {
    stop("Error: Both ages must be numeric values")
  }

  if (any(age1 < 18) || any(age2 < 18)) {
    stop("Error: Age must be 18 or older for both individuals")
  }

  # Check if age1 and age2 are single values
  if (length(age1) == 1 && length(age2) == 1) {
    # Single values, calculate the verdict directly
    older_age <- max(age1, age2)
    threshold <- (older_age / 2) + 7

    if (threshold <= min(age1, age2)) {
      verdict <- TRUE
      output <- paste("A couple with the ages",
                      age1,
                      "and",
                      age2,
                      "does meet the 'Half-Your-Age-Plus-Seven' Rule.")
    } else {
      verdict <- FALSE
      output <- paste("A couple with the ages",
                      age1,
                      "and",
                      age2,
                      "does NOT meet the 'Half-Your-Age-Plus-Seven' Rule.")
    }
  } else {
    # Vectors, perform element-wise calculations
    older_age <- pmax(age1, age2)
    threshold <- (older_age / 2) + 7
    verdict <- threshold <= pmin(age1, age2)

    output <- ifelse(verdict,
                     paste("A couple with the ages",
                           age1,
                           "and",
                           age2,
                           "does meet the 'Half-Your-Age-Plus-Seven' Rule."),
                     paste("A couple with the ages",
                           age1,
                           "and",
                           age2,
                           "does NOT meet the 'Half-Your-Age-Plus-Seven' Rule."))
  }

  # Return the result
  return(output)
}

