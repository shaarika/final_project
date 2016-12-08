library(shiny)
library(plotly)
library(dplyr)

#BLACK POPULATION AND DEATHS

shinyUI(navbarPage('Black Deaths in proportion to black population',
                   
                   # Create a tabPanel to show your scatter plot
                   tabPanel('Scatter',
                            # Add a titlePanel to your tab
                            titlePanel('Black Population vs Black Victim'),
                            
                            # Create a sidebar layout for this tab (page)
                            sidebarLayout(
                              
                              # Create a sidebarPanel for your controls
                              sidebarPanel(
                                
                                # Make a textInput widget for searching for a state in your scatter plot
                                textInput('search', label="Find a State", value = '')
                              ),
                              
                              # Create a main panel, in which you should display your plotly Scatter plot
                              mainPanel(
                                plotlyOutput('scatter')
                              )
                            )
                   )
))