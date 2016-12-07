library(shiny)
library(plotly)
library(leaflet)

shinyUI(fluidPage(

     sidebarPanel(
       
       # create checkbox group for year
       radioButtons("year", label = h3("Select a time period:"), 
                          choices = list("2013" = 'police_final_2013', "2014" = 'police_final_2014', "2015" = 'police_final_2015',
                                         "2016" = 'police_final_2016', "All" = 'police_final'),
                          selected = 'police_final'),
       
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
       titlePanel("Location of Brutality Incidents"),
       
       # display plot
       leafletOutput('map')
       
     )
     
  )
  
)