dts2 <- function(x, type = "additive"){
  
  library(lubridate)
  library(forecast)
  library(dplyr)
  
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
