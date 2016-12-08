
#STACKED BARS

library(shiny)

setwd("~/College/UW/INFO201/final_project")
#setwd("C:/Users/arquizaada/Desktop/final_project")
#source('C:/Users/arquizaada/Desktop/final_project/barchart/gender_test.R')

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$chart <- renderPlotly({
    
    desired.chart <- input$dropdown
    file.path <- paste0('~/College/UW/INFO201/final_project/barchart/', 
                        desired.chart, '.R')
    source(file.path)
    
    return(BuildChart(major.cities, desired.chart))
  
  })
  
})
