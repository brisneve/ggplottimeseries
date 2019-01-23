ggseason <- function(x) {
  ggplot(x,aes(x=date, y= seasonal))+
    geom_line()
} 
