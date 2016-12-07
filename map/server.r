library(shiny)
library(plotly)
library(leaflet)

<<<<<<< 4e5978c0fe82e1d50c7f5e23e29866c1716fe7e2
setwd("~/OneDrive/Documents/School/INFO 201/Assignments/final_project")
# police.data <- read.csv('data/police_final.csv')
=======
#setwd("~/OneDrive/Documents/School/INFO 201/Assignments/final_project")

police.data <- read.csv('data/police_final.csv')
>>>>>>> Andy

shinyServer(function(input, output) {
  
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
  
})