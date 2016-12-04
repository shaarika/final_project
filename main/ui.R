library(shiny)
library(plotly)


shinyUI(navbarPage('Police Brutality 2013 - 2016',
     
     # Create a tab panel for map
     tabPanel('Map',
        
        # load map ui file      
        source('/Users/ishannarula/OneDrive/Documents/School/INFO 201/Assignments/final_project/map/ui.R')$value
              
     ) 
     
     
         
        
))