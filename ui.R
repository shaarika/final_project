library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Variables"),
  sidebarPanel(
    selectInput("varibale", "Variable:",
                list("Gender" = "gender",
                     "Armed v. Unarmed" = "armed"))
  ),
  mainPanel(
    titlePanel("Pie Chart"),
    plotlyOutput('gender'),
    plotlyOutput('armed')
  )
))