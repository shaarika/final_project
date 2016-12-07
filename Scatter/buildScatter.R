library(plotly)
library(stringr)
### Build Scatter ###
BuildScatter <- function(data.summary,  search = '', xvar = 'Black.Population.Percentage', yvar = 'Black.Victims.Percentage') {
  # Filter down to state, then graph
  
  # Get x and y max
  xmax <- max(data.summary[,xvar]) * 1.5
  ymax <- max(data.summary[,yvar]) * 1.5
  x.equation <- paste0('~', xvar)
  y.equation <- paste0('~', yvar)
  data <- data %>% 
    filter(grepl(search, State))
  
  plot_ly(data.summary=data.summary, x = eval(parse(text = x.equation)), 
          y = eval(parse(text = y.equation)), 
          mode='markers', 
          marker = list(
            opacity = .4, 
            size = 10
          )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = xvar), 
           yaxis = list(range = c(0, ymax), title = yvar)
    ) %>% 
    return()
}

