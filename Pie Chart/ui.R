library(shiny)

# Create a shinyUI with a fluidPage layout
shinyUI(pageWithSidebar(
  
# Add a title and a widget that allows the user to select variable from a list of variables in the data 
  headerPanel("Data from 2013 to 2016"),
  sidebarPanel(
    selectInput("variable", "Variable:",
                choices = list("Gender" = "gender",
                     "Armed v. Unarmed" = "armed",
                     "Race" = "race",
                     "Age" = "age.group",
                     "Year" = "year"))
   
    
                   
  ),

# Add plotlyOutput to plot the pie chart desired from the select menu 
  mainPanel(
    titlePanel("Graph of Selected Variable:"),
    plotlyOutput("plot"),
    h4("In the legend, click on any variable to remove it from the data to compare other variables 
      against eachother!"),
    h4("**Any variable that produces '0' designates unavailable data**")
    
  )
))