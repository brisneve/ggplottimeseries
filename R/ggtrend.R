if(!require(ggplot2)){install.packages("ggplot2"); library(ggplot2)}

ggtrend <- function(x) {
  ggplot(x,aes(x=date, y= trend))+
    geom_line()
}
