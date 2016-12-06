library(shiny)

# Define UI for application that draws a histogram
ui <- library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Variables"),
  sidebarPanel(),
  mainPanel()
))
# Define server logic required to draw a histogram
server <- library(shiny)

shinyServer(function(input, output) {}
            })
