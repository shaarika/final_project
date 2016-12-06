library(shiny)
library(plotly)
library(dplyr)

add<- police_final %>% 
  group_by(gender) %>%
  summarise(n()) 

colnames(add)[2]<-"Number"

gender <- plot_ly(add, labels = ~gender, values= ~Number, type = 'pie') %>%
  layout(title = 'Gender',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

###########################################

shinyServer(function(input, output) {
  output$gender <- renderPlotly(
    return(gender))
  
  output$armed <- renderPlotly(
    return(armed))
  })
