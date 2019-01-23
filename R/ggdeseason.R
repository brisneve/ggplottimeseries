if(!require(ggplot2)){install.packages("ggplot2"); library(ggplot2)}

ggdeseason <- function(x) {
  ggplot(x,aes(x=date, y= (observation - seasonal)))+
    geom_line()
}
