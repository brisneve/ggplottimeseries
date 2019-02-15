
ggobserve <-function(x){
  ggplot(x,aes(x=date, y= observation))+
    geom_line()
}
