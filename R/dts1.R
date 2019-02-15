#' Dataframe for ggplottimeseries
#'
#' This function creates a data frame of decomposed time series.
#'
#' @param x a vector of the dates formatted as YYYY-MM-DD
#' @param y a vector of the observed time-series values
#' @param z frequency (the number of observations per unit of time)
#' @param type type of time series, either "additive" (default) or multiplicative
#'
#' @return This returns to a dataframe with a decomposed timeseries
#' \item{date}{date formatted as YYYY-MM-DD}
#' \item{observation}{observation of the timeseries}
#' \item{trend}{trend component of the timeseries}
#' \item{seasonal}{seasonal component of the timeseries}
#' \item{random}{random component of the timeseries}
#'
#' @examples
#' data(sst)
#'
#' x <- sst$date
#' y <- sst$sst
#' z <- 365.25 #number of days in a year
#' df <- dts1(x,y,z, type = "additive")
#' head(df)
#'
#' @author Brisneve Edullantes
#'
#' @references
#'
#' Garrett Grolemund, Hadley Wickham (2011). Dates and Times Made Easy with lubridate. Journal of Statistical Software, 40(3), 1-25. URL http://www.jstatsoft.org/v40/i03/.
#'
#' Hyndman R, Athanasopoulos G, Bergmeir C, Caceres G, Chhay L, O'Hara-Wild M, Petropoulos F, Razbash S, Wang E, Yasmeen F (2018). _forecast: Forecasting functions for time series and linear models_. R package version 8.4, <URL: http://pkg.robjhyndman.com/forecast>.
#'
#' Hyndman RJ, Khandakar Y (2008). “Automatic time series forecasting: the forecast package for R.”_Journal of Statistical Software_, *26*(3), 1-22. <URL: http://www.jstatsoft.org/article/view/v027i03>.
#'
#' @export



dts1 <- function(x,y,z, type = "additive"){

  library(lubridate)
  library(forecast)
  library(dplyr)

  #load ts data
  a <- ts(y,
          freq=z,
          start=decimal_date(ymd(as.Date.character(x[1]))))

  #decompose time series
  #collate date, data, trend, seasonal and random in a dataframe

  b <- decompose(a, type)
  c <- as.data.frame(cbind(observation = as.numeric(b$x),
                           trend = as.numeric(b$trend),
                           seasonal = as.numeric(b$seasonal),
                           random = as.numeric(b$random)))
  c$date <- x
  d <-dplyr::  select(c, date, observation, trend, seasonal, random)
}
