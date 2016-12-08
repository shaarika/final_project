# ui.R
library(shiny)
library(plotly)
library(dplyr)
shinyUI(navbarPage('',
                   
                   # Create a tab panel for bar
                   tabPanel('Bar Charts',
                            titlePanel(''),
                            # Create sidebar layout
                            sidebarLayout(
                              
                              # Side panel for controls
                              sidebarPanel(
                                
                                # Input to select variable to map
                                selectInput('dropdown', label = 'Variables', choices = list("Gender" = 'gender_test',
                                                                                                "Race" = 'race_test',
                                                                                                "Age Group" = 'age_test',
                                                                                                "Situation" = 'armed_test'))
                              ),
                            
                              # Main panel: display plotly map
                              mainPanel(
                                plotlyOutput('chart')
                              )
                            )
                   )))