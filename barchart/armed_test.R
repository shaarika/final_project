## ARMED/UNARMED CHART
library(plotly)
library(dplyr)

police_killings <- police_killings <- read.csv('data/police_final.csv')

#create a new dataset that contains only the 10 major cities
major.cities <- filter(police_killings, city 
                       %in% c('Boston',
                              'Chicago',
                              'Dallas',
                              'Las Vegas',
                              'Los Angeles',
                              'Miami',
                              'New York',
                              'Philadelphia',
                              'Portland',
                              'Seattle'))

#extract each situation from each city
boston.armed <- filter(boston.data, armed %in% c('Allegedly Armed'))
boston.armed.num <- nrow(boston.armed)
boston.unarmed <- filter(boston.data, armed %in% c('Clearly Unarmed'))
boston.unarmed.num <- nrow(boston.unarmed)
boston.unclear <- filter(boston.data, armed %in% c('Unclear'))
boston.unclear.num <- nrow(boston.unclear)
boston.vehicle <- filter(boston.data, armed %in% c('Vehicle'))
boston.vehicle.num <- nrow(boston.vehicle)

chicago.armed <- filter(chicago.data, armed %in% c('Allegedly Armed'))
chicago.armed.num <- nrow(chicago.armed)
chicago.unarmed <- filter(chicago.data, armed %in% c('Clearly Unarmed'))
chicago.unarmed.num <- nrow(chicago.unarmed)
chicago.unclear <- filter(chicago.data, armed %in% c('Unclear'))
chicago.unclear.num <- nrow(chicago.unclear)
chicago.vehicle <- filter(chicago.data, armed %in% c('Vehicle'))
chicago.vehicle.num <- nrow(chicago.vehicle)

dallas.armed <- filter(dallas.data, armed %in% c('Allegedly Armed'))
dallas.armed.num <- nrow(dallas.armed)
dallas.unarmed <- filter(dallas.data, armed %in% c('Clearly Unarmed'))
dallas.unarmed.num <- nrow(dallas.unarmed)
dallas.unclear <- filter(dallas.data, armed %in% c('Unclear'))
dallas.unclear.num <- nrow(dallas.unclear)
dallas.vehicle <- filter(dallas.data, armed %in% c('Vehicle'))
dallas.vehicle.num <- nrow(dallas.vehicle)

lv.armed <- filter(lv.data, armed %in% c('Allegedly Armed'))
lv.armed.num <- nrow(lv.armed)
lv.unarmed <- filter(lv.data, armed %in% c('Clearly Unarmed'))
lv.unarmed.num <- nrow(lv.unarmed)
lv.unclear <- filter(lv.data, armed %in% c('Unclear'))
lv.unclear.num <- nrow(lv.unclear)
lv.vehicle <- filter(lv.data, armed %in% c('Vehicle'))
lv.vehicle.num <- nrow(lv.vehicle)

la.armed <- filter(la.data, armed %in% c('Allegedly Armed'))
la.armed.num <- nrow(la.armed)
la.unarmed <- filter(la.data, armed %in% c('Clearly Unarmed'))
la.unarmed.num <- nrow(la.unarmed)
la.unclear <- filter(la.data, armed %in% c('Unclear'))
la.unclear.num <- nrow(la.unclear)
la.vehicle <- filter(la.data, armed %in% c('Vehicle'))
la.vehicle.num <- nrow(la.vehicle)

miami.armed <- filter(miami.data, armed %in% c('Allegedly Armed'))
miami.armed.num <- nrow(miami.armed)
miami.unarmed <- filter(miami.data, armed %in% c('Clearly Unarmed'))
miami.unarmed.num <- nrow(miami.unarmed)
miami.unclear <- filter(miami.data, armed %in% c('Unclear'))
miami.unclear.num <- nrow(miami.unclear)
miami.vehicle <- filter(miami.data, armed %in% c('Vehicle'))
miami.vehicle.num <- nrow(miami.vehicle)

ny.armed <- filter(ny.data, armed %in% c('Allegedly Armed'))
ny.armed.num <- nrow(ny.armed)
ny.unarmed <- filter(ny.data, armed %in% c('Clearly Unarmed'))
ny.unarmed.num <- nrow(ny.unarmed)
ny.unclear <- filter(ny.data, armed %in% c('Unclear'))
ny.unclear.num <- nrow(ny.unclear)
ny.vehicle <- filter(ny.data, armed %in% c('Vehicle'))
ny.vehicle.num <- nrow(ny.vehicle)

philadelphia.armed <- filter(philadelphia.data, armed %in% c('Allegedly Armed'))
philadelphia.armed.num <- nrow(philadelphia.armed)
philadelphia.unarmed <- filter(philadelphia.data, armed %in% c('Clearly Unarmed'))
philadelphia.unarmed.num <- nrow(philadelphia.unarmed)
philadelphia.unclear <- filter(philadelphia.data, armed %in% c('Unclear'))
philadelphia.unclear.num <- nrow(philadelphia.unclear)
philadelphia.vehicle <- filter(philadelphia.data, armed %in% c('Vehicle'))
philadelphia.vehicle.num <- nrow(philadelphia.vehicle)

portland.armed <- filter(portland.data, armed %in% c('Allegedly Armed'))
portland.armed.num <- nrow(portland.armed)
portland.unarmed <- filter(portland.data, armed %in% c('Clearly Unarmed'))
portland.unarmed.num <- nrow(portland.unarmed)
portland.unclear <- filter(portland.data, armed %in% c('Unclear'))
portland.unclear.num <- nrow(portland.unclear)
portland.vehicle <- filter(portland.data, armed %in% c('Vehicle'))
portland.vehicle.num <- nrow(portland.vehicle)

seattle.armed <- filter(seattle.data, armed %in% c('Allegedly Armed'))
seattle.armed.num <- nrow(seattle.armed)
seattle.unarmed <- filter(seattle.data, armed %in% c('Clearly Unarmed'))
seattle.unarmed.num <- nrow(seattle.unarmed)
seattle.unclear <- filter(seattle.data, armed %in% c('Unclear'))
seattle.unclear.num <- nrow(seattle.unclear)
seattle.vehicle <- filter(seattle.data, armed %in% c('Vehicle'))
seattle.vehicle.num <- nrow(seattle.vehicle)

BuildChart <- function(major.cities, armed.chart){
  
  #y, x, and x1 values
  y.cities <- c('Boston',
                'Chicago',
                'Dallas',
                'Las Vegas',
                'Los Angeles',
                'Miami',
                'New York',
                'Philadelphia',
                'Portland',
                'Seattle')
  
  x.armed <- c(boston.armed.num, 
               chicago.armed.num, 
               dallas.armed.num, 
               lv.armed.num, 
               la.armed.num, 
               miami.armed.num, 
               ny.armed.num, 
               philadelphia.armed.num, 
               portland.armed.num, 
               seattle.armed.num)
  
  x.unarmed <- c(boston.unarmed.num, 
                 chicago.unarmed.num, 
                 dallas.unarmed.num, 
                 lv.unarmed.num, 
                 la.unarmed.num, 
                 miami.unarmed.num, 
                 ny.unarmed.num, 
                 philadelphia.unarmed.num, 
                 portland.unarmed.num, 
                 seattle.unarmed.num)
  
  x.unclear <- c(boston.unclear.num, 
                 chicago.unclear.num, 
                 dallas.unclear.num, 
                 lv.unclear.num, 
                 la.unclear.num, 
                 miami.unclear.num, 
                 ny.unclear.num, 
                 philadelphia.unclear.num, 
                 portland.unclear.num, 
                 seattle.unclear.num)
  
  x.vehicle <- c(boston.vehicle.num, 
                 chicago.vehicle.num, 
                 dallas.vehicle.num, 
                 lv.vehicle.num, 
                 la.vehicle.num, 
                 miami.vehicle.num, 
                 ny.vehicle.num, 
                 philadelphia.vehicle.num, 
                 portland.vehicle.num, 
                 seattle.vehicle.num)
  
  armed.data <- data.frame(y.cities, x.armed, x.unarmed, x.unclear, x.vehicle)
  
  #make chart using plotly
  armed.chart <- plot_ly(armed.data, x = ~x.armed, y = ~y.cities, type = 'bar', orientation = 'h', name = 'Allegedly Armed',
                         marker = list(color = 'rgba(122, 120, 168, 0.8)',
                                       line = list(color = 'rgba(122, 120, 168, 0.8',
                                                   width = 1))) %>%
    add_trace(x = ~x.unarmed, name = 'Clearly Unarmed',
              marker = list(color = 'rgba(71, 58, 131, 0.8)',
                            line = list(color = 'rgba(71, 58, 131, 0.8)',
                                        width = 1))) %>%
    add_trace(x = ~x.unclear, name = 'Unclear',
              marker = list(color = 'rgb(164, 163, 204, 0.8)',
                            line = list(color = 'rgba(164, 163, 204, 0.8)',
                                        width = 1))) %>%
    add_trace(x = ~x.vehicle, name = 'Vehicle',
              marker = list(color = 'rgba(38, 24, 74, 0.8)',
                            line = list(color = 'rgba(38, 24, 74, 0.8)',
                                        width = 1))) %>%
    
    layout(barmode = 'stack',
           title = "Deaths by Situations",
           xaxis = list(title = ""),
           yaxis = list(title =""))
  
  return(armed.chart)
}
