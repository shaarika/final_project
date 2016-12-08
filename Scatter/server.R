library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)

setwd('~/Desktop/final_project')

data <- read.csv('data/city_population.csv')
data <- as.data.frame(data)

### Build Scatter ###
BuildScatter <- function(df,  search = '', 
                         xvar = 'Black.Population.Percentage', yvar = 'Black.Victim.Percentage') {
  # Filter down to state(s), then graphs
  # Get x and y max
  xmax <- max(df[,xvar]) * 1.5
  ymax <- max(df[,yvar]) * 1.5
  x.equation <- paste0('~', xvar)
  y.equation <- paste0('~', yvar)
  df <- df %>% 
    filter(grepl(search, State))
  
  plot_ly(data = df, x = eval(parse(text = x.equation)), 
          y = eval(parse(text = y.equation)), 
          mode='markers', 
          marker = list(
            opacity = .4, 
            size = 10
          )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = "Black Population Percentage"), 
           yaxis = list(range = c(0, ymax), title = "Black Victim Percentage")
    ) %>% 
    return()
}

data.summary <- data %>% 
  group_by(State) %>%
  summarise(Total.Population = sum(Total.Population),
            White.People = sum(White),
            Black.Population = sum(Black),
            Total.Killed.by.Police = sum (All.People.Killed.by.Police..2013.2015.),
            Black.Killed.by.Police = sum(Black.People.Killed.by.Police..2013.2015.))


# Adding columns of Black Population percentage of each state & 
#Black Killed Population of Police Brutality Cases

df <- data.summary %>%
  filter(State != "United States") %>%
  mutate(Black.Population.Percentage = Black.Population / Total.Population * 100) %>%
  mutate(Black.Victim.Percentage = Black.Killed.by.Police / Total.Killed.by.Police * 100)

# Start shinyServer
shinyServer(function(input, output, session) { 
  
  # Render a plotly object that returns your map
  output$scatter <- renderPlotly({
      return(BuildScatter(df, input$search))
    #}
  })
})



