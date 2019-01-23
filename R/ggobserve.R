if(!require(ggplot2)){install.packages("ggplot2"); library(ggplot2)}

ggobserve <-function(x){
  ggplot(x,aes(x=date, y= observation))+
    geom_line()
}
