#' Dataframe for ggplottimeseries
#'
#' This function converts time series-class data into a data frame of decomposed time series.
#'
#' @param x a time series-class data
#' @param type type of time series, either "additive" (default) or multiplicative
#'
#' @return This returns to a dataframe with the components of timeseries
#' \item{date}{date formatted as YYYY-MM-DD}
#' \item{observation}{observation of the timeseries}
#' \item{trend}{trend component of the timeseries}
#' \item{seasonal}{seasonal component of the timeseries}
#' \item{random}{random component of the timeseries}
#'
#' @examples
#' data(co2)
#' df <- dts2(co2, type ="additive")
#' head(df)
#'
#' @author Brisneve Edullantes
#'
#' @export


dts2 <- function(x, type = "additive"){

  if(!require(lubridate)){install.packages("lubridate"); library(lubridate)}
  if(!require(dplyr)){install.packages("dplyr"); library(dplyr)}


  #load ts data
  a <- x

  #decompose time series
  #collate date, data, trend, seasonal and random in a dataframe

  b <- decompose(a, type)
  c <- as.data.frame(cbind(observation = as.numeric(b$x),
                           trend = as.numeric(b$trend),
                           seasonal = as.numeric(b$seasonal),
                           random = as.numeric(b$random)))
  c$date <- date_decimal(as.numeric(time(a)))
  d <-dplyr::  select(c, date, observation, trend, seasonal, random)
}
