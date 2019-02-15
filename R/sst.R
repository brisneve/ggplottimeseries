#' Sea surface temperature data
#'
#' Daily sea surface temperature data downloaded from Giovanni
#' @name sst
#' @docType data
#' @format a sample dataframe with 2142 observations on the following variables.
#' \describe{
#'   \item{\code{date}}{a date vector of the time of the observation}
#'   \item{\code{sst}}{a numeric vector}}
#'
#' @author Brisneve Edullantes

library(readr)
sst <- read_csv("data/sst.csv")
usethis::use_data(sst, overwrite = TRUE)
