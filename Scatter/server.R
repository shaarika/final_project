library(shiny)
library(ggplot2)
library(dplyr)

setwd('~/Desktop/final_project/')
source('./scripts/buildScatter.R')
data <- read.csv('./data/city_population.csv', stringsAsFactors = FALSE)
data <- as.data.frame(data)

library(dplyr)
data.summary <- data %>% 
  group_by(State) %>%
  summarise(Total.Population = sum(Total.Population),
            White.People = sum(White),
            Black.Population = sum(Black),
            Total.Killed.by.Police = sum (All.People.Killed.by.Police..2013.2015.),
            Black.Killed.by.Police = sum(Black.People.Killed.by.Police..2013.2015.))

# Adding columns of Black Population percentage of each state & Black Killed Population of Police Brutality Cases
data.summary <- data.summary %>%
  filter(State != "United States") %>%
  mutate(Black.Population.Percentage = Black.Population / Total.Population * 100) %>%
  mutate(Black.Victim.Percentage = Black.Killed.by.Police / Total.Killed.by.Police * 100)

# Start shinyServer
shinyServer(function(input, output) { 
  
  # Render a plotly object that returns your map
  output$scatter <- renderPlotly({
    return(BuildScatter(data.summary, input$state))
  })
})

