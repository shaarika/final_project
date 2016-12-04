library(dplyr)
library(leaflet)
library(plotly)
library(knitr)

setwd("~/OneDrive/Documents/School/INFO 201/Assignments/final_project")

police.data <- read.csv('data/police_final.csv')

#   1. Asian, 2. Black, 3. Hispanic, 4. Native, 5. Pacific, 6. Unknown, 7. White

colors1 <- c('purple', 'blue', 'red', 'green', 'green', 'green', 'orange')
races <- c('White', 'Black', 'Asian', 'Hispanic', 'Native American',
           'Unknown race', 'Pacific Islander')

#   1. Allegedly Armed, 2. Unarmed, 3. Unclear, 4. Vehicle

colors2 <- c('red', 'blue', 'purple', 'orange')
armed <- c('Allegedly Armed', 'Unclear', 'Vehicle', 'Unarmed')

pal_race <- colorFactor(colors1, domain = races)
pal_armed <- colorFactor(colors2, domain = armed)
pal_age <- colorFactor("Reds", domain = c(10:70))

prompt <- c(paste0(police.data$name, ", ", police.data$age, ", ", police.data$race, ". ",
                  police.data$armed, ". ", police.data$date, ". ", police.data$city, 
                  ", ", police.data$state, ", ", police.data$zip))

map <- leaflet(data = police.data) %>% addTiles() %>%
               addCircleMarkers(~longitude, ~latitude, popup = ~as.character(prompt), 
                    radius = 2, 
                    color = getColor(police.data$age), 
                    stroke = TRUE, fillOpacity = 1) %>%
  addLegend("bottomright", pal = pal_race, values = ~race,
            title = "Race", opacity = 1)
      

map

getColor <- function(num) {
  col <- "red"
  if (num >= 50) col <- "blue"
  return (col)
}