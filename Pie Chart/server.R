library(shiny)
library(plotly)
library(dplyr)
library(rsconnect)

# Reading in Data
police_final <-read.csv("police_final.csv")
police_final <- as.data.frame(police_final)

# Create a function that allows the user to input a variable from the data which produces a pie
# chart that depecits the desired variable and count
Pie <- function(col_name){
  police_final %>%
    group_by_(col_name = col_name) %>%
    summarise(count=n()) %>%
    as.data.frame(col_name) %>%
    plot_ly(labels = ~col_name, values = ~count, type = 'pie') %>%
    layout(
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))}

# Create a shiny server that creates a pie chart that takes in the input variable from the dataset
shinyServer(function(input, output) {
  output$plot <- renderPlotly(Pie(input$variable)
                            )}
)
