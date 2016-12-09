library(shiny)
library(plotly)
library(leaflet)
library(dplyr)
library(ggplot2)

setwd("~/College/UW/INFO201/final_project")

#**********************MAP*********************************
police.data <- read.csv('data/police_final.csv')

shinyServer(function(input, output, session) {
  
  # renders leaflet map
  output$map <- renderLeaflet({
    
    file <- paste0('data/', input$year, '.csv')
    police.data <- read.csv(file)
    
    #   1. Asian, 2. Black, 3. Hispanic, 4. Native, 5. Pacific, 6. Unknown, 7. White
    colors1 <- c('brown', 'blue', 'red', 'green', 'yellow', 'purple', 'orange')
    races <- c('White', 'Black', 'Asian', 'Hispanic', 'Native American',
               'Unknown race', 'Pacific Islander')
    
    #   1. Allegedly Armed, 2. Unarmed, 3. Unclear, 4. Vehicle
    colors2 <- c('red', 'blue', 'purple', 'orange')
    armed <- c('Allegedly Armed', 'Unclear', 'Vehicle', 'Unarmed')
    
    #   1. 0 - 15,  2. 15 - 30, 3. 30 - 45, 4. 45 - 60, 5. 60 - 75, 6. 75 - 90, 7. 90 - 105
    colors3 <- c('red', 'blue', 'purple', 'orange', 'brown', 'black', 'yellow', 'gray')
    age <- c('0 - 15', '15 - 30', '30 - 45', '45 - 60', '60 - 75', 
             '75 - 90', '90 - 105', 'Unknown')
    
    # created palletes by combining colors and domain
    pal_race <- colorFactor(colors1, domain = races)
    pal_armed <- colorFactor(colors2, domain = armed)
    pal_age.group <- colorFactor(colors3, domain = age)
    
    # creating dialog prompt
    prompt <- c(paste0(police.data$name, ", ", police.data$age, ", ", police.data$race, ". ",
                       police.data$armed, ". ", police.data$date, ". ", police.data$city, 
                       ", ", police.data$state, ", ", police.data$zip))
    
    # created various string input values
    selected.dataset = paste0('~pal_', input$dataset, '(', input$dataset, ')')
    selected.pal = paste0('pal_', input$dataset)
    selected.col = paste0('~', input$dataset)
    
    # building map
    map <- leaflet(data = police.data) %>% addTiles() %>%
      
      addCircleMarkers(~longitude, ~latitude, popup = ~as.character(prompt), 
                       radius = input$size, 
                       color = eval(parse(text = selected.dataset)), 
                       stroke = TRUE, fillOpacity = input$opacity) %>%
      
      addLegend("bottomright", pal = eval(parse(text = selected.pal)), 
                values = eval(parse(text = selected.col)), 
                title = 'Legend', opacity = 1)
    
    return (map)                                       
    
  })
  
  #********************************************************BAR CHART***************************************************
  output$chart <- renderPlotly({
    
    desired.chart <- input$dropdown
    file.path <- paste0('~/College/UW/INFO201/final_project/barchart/', 
                        desired.chart, '.R')
    source(file.path)
    
    return(BuildChart(major.cities, desired.chart))
    
  })
  
#*************************************************CASE STUDY***************************************************
  
  data <- read.csv('data/city_population.csv')
  data <- as.data.frame(data)
  
  ### Build Scatter ###
  BuildScatter <- function(df,  search = '', 
                           xvar = 'Black.Population.Percentage', yvar = 'Black.Victim.Percentage') {
    # Filter down to state(s), then graphs
    # Get x and y max
    xmax <- max(df[,xvar]) * 1.5
    ymax <- max(df[,yvar]) * 1.5
    x.equation <- paste0('~', xvar)
    y.equation <- paste0('~', yvar)
    df <- df %>% 
      filter(grepl(search, State))
    
    plot_ly(data = df, x = eval(parse(text = x.equation)), 
            y = eval(parse(text = y.equation)), 
            mode='markers', 
            text=~State,
            marker = list(
              opacity = .4, 
              size = 10
            )) %>% 
      layout(xaxis = list(range = c(0, xmax), title = "Black Population Percentage"), 
             yaxis = list(range = c(0, ymax), title = "Black Victim Percentage")
      ) %>% 
      return()
  }
  
  data.summary <- data %>% 
    group_by(State) %>%
    summarise(Total.Population = sum(Total.Population),
              White.People = sum(White),
              Black.Population = sum(Black),
              Total.Killed.by.Police = sum (All.People.Killed.by.Police..2013.2015.),
              Black.Killed.by.Police = sum(Black.People.Killed.by.Police..2013.2015.))
  
  
  # Adding columns of Black Population percentage of each state & 
  #Black Killed Population of Police Brutality Cases
  
  df <- data.summary %>%
    filter(State != "United States") %>%
    mutate(Black.Population.Percentage = Black.Population / Total.Population * 100) %>%
    mutate(Black.Victim.Percentage = Black.Killed.by.Police / Total.Killed.by.Police * 100)
  

    # Render a plotly object that returns your map
    output$scatter <- renderPlotly({
      return(BuildScatter(df, input$search))
      
    })
  
#*****************************PIE CHART******************************************************
    # Reading in Data
    police_final <-read.csv("data/police_final.csv")
    police_final <- as.data.frame(police_final)
    
    # Create a function that allows the user to input a variable from the data which produces a pie
    # chart that depecits the desired variable and count
    Pie <- function(col_name){
      police_final %>%
        group_by_(col_name = col_name) %>%
        summarise(count=n()) %>%
        as.data.frame(col_name) %>%
        plot_ly(labels = ~col_name, values = ~count, type = 'pie') %>%
        layout(
          xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
          yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))}    
   
    output$plot <- renderPlotly(Pie(input$variable)
    )
    })


  


