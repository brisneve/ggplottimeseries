
ggdetrend <- function(x) {
  ggplot(x, aes(x=date, y= (observation - trend)))+
    geom_line()
}
