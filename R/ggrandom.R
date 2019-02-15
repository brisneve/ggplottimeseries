
ggrandom <- function(x) {
  if(!require(ggplot2)){install.packages("ggplot2"); library(ggplot2)}
  ggplot(x,aes(x=date, y= random))+
    geom_line()
}
