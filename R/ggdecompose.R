if(!require(ggplot2)){install.packages("ggplot2"); library(ggplot2)}

ggdecompose <-function(x){
  n <- gather(x, key = "components", value = "estimate", observation, trend, seasonal, random)
  n$components_f = factor(n$components, levels=c('observation','trend','seasonal','random'))
  ggplot(n,aes(x=date, y = estimate))+
    geom_line()+
    facet_grid(components_f~.,scales = "free_y")
}
