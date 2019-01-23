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
