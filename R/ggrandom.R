
ggrandom <- function(x) {
  ggplot(x,aes(x=date, y= random))+
    geom_line()
}
