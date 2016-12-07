library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Variables"),
  sidebarPanel(
    selectInput("variable", "Variable:",
                choices = list("Gender" = "gender",
                     "Armed v. Unarmed" = "armed",
                     "Race" = "race"))
  ),
  mainPanel(
    titlePanel("Pie Chart"),
    plotlyOutput("plot1")
    
  )
))