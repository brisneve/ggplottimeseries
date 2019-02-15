
ggtrend <- function(x) {
  ggplot(x,aes(x=date, y= trend))+
    geom_line()
}
