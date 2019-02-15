
ggdeseason <- function(x) {
  ggplot(x,aes(x=date, y= (observation - seasonal)))+
    geom_line()
}
