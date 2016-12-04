library(shiny)
library(plotly)

shinyUI(fluidPage(

  
  sidebarLayout(
    
     sidebarPanel(
       
       # create dropdown for dataset
       selectInput("dataset", label = h3("Select a dataset to display:"), 
                   choices = list("Race of victim" = 'race', "Armed status" = 'armed',
                                   "Age of victim" = 'age.group'), 
                   selected = 'race'),
       
       # create slider to adjust marker size
       sliderInput("size", label = h3("Marker size:"), min = 1, 
                   max = 10, value = 2),
       
       # create slider to adjust marker opacity
       sliderInput("opacity", label = h3("Marker opacity:"), min = 0.1, 
                   max = 1.0, value = 0.8)
     ),
     
     mainPanel(
       
       # set title
       titlePanel("Police Brutality 2013 - 2016"),
       
       # display plot
       leafletOutput('map')
       
     )
    
  )
  
))