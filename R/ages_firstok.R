#' First Okay
#'
#' Prints the ages when two people of the entered birth dates will have an appropriate age gap, given the "Half-Your-Age-Plus-7" Rule.
#'
#' @details
#' @param birthdate1 date, the date when person 1 was born, written as "YYYY-MM-DD"
#' @param birthdate2 date, the date when person 2 was born, written as "YYYY-MM-DD"
#'
#' @return The ages that are the appropriate age range for the age entered
#'
#' @import lubridate
#' @export
#'
#' @examples
#' ages_firstokay(1970-03-19, 2000-07-09)
#'

ages_firstok <- function(birthdate1, birthdate2) {

  # Convert input strings to Date objects
  birthdate1 <- ymd(birthdate1)
  birthdate2 <- ymd(birthdate2)

  # Calculate the time difference in years
  age_diff <- as.numeric(difftime(birthdate2, birthdate1, units = "days") / 365.25)

  # Check if age_diff is less than 4
  if (age_diff < 4) {
    older_age <- 18 + age_diff
    younger_age <- 18
  } else {
    # Calculate the ages based on the given logic
    older_age <- 14 + 2 * age_diff
    younger_age <- older_age / 2 + 7
  }

  return(c("Age of Older Person" = older_age, "Age of Younger Person" = younger_age))
}
