library(shiny)
library(plotly)
library(dplyr)

#user interface for States
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Police Brutality in States"),
  
  # Sidebar with a slider input for number of bins
  
  sidebarPanel(
    h3("States"),
    # Select Justices name here
    selectizeInput("state", label = "State Name(s)",
                   choices = unique(data.summary$State), multiple = T,
                   options = list(maxItems = 30, placeholder = 'Select a state'),
                   selected = "Washington"),
    # Term plot
    plotOutput("termPlot", height = 200),
    
    helpText("Data: Showcase the percentage of black population in the state .
             âEach state has a different population.â Journal of Conflict Resolution. ")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotlyOutput("scatter")
  )
))

