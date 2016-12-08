## GENDER CHART

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
## GENDER CHART
#extract number of males and females for each city
boston.data <- filter(major.cities, city %in% c('Boston'))
boston.males <- filter(boston.data, gender %in% c('Male'))
boston.males.num <- nrow(boston.males)
boston.fem <- filter(boston.data, gender %in% c('Female'))
boston.fem.num <- nrow(boston.fem)

chicago.data <- filter(major.cities, city %in% c('Chicago'))
chicago.males <- filter(chicago.data, gender %in% c('Male'))
chicago.males.num <- nrow(chicago.males)
chicago.fem <- filter(chicago.data, gender %in% c('Female'))
chicago.fem.num <- nrow(chicago.fem)

dallas.data <- filter(major.cities, city %in% c('Dallas'))
dallas.males <- filter(dallas.data, gender %in% c('Male'))
dallas.males.num <- nrow(dallas.males)
dallas.fem <- filter(dallas.data, gender %in% c('Female'))
dallas.fem.num <- nrow(dallas.fem)

lv.data <- filter(major.cities, city %in% c('Las Vegas'))
lv.males <- filter(lv.data, gender %in% c('Male'))
lv.males.num <- nrow(lv.males)
lv.fem <- filter(lv.data, gender %in% c('Female'))
lv.fem.num <- nrow(lv.fem)

la.data <- filter(major.cities, city %in% c('Los Angeles'))
la.males <- filter(la.data, gender %in% c('Male'))
la.males.num <- nrow(la.males)
la.fem <- filter(la.data, gender %in% c('Female'))
la.fem.num <- nrow(la.fem)

miami.data <- filter(major.cities, city %in% c('Miami'))
miami.males <- filter(miami.data, gender %in% c('Male'))
miami.males.num <- nrow(miami.males)
miami.fem <- filter(miami.data, gender %in% c('Female'))
miami.fem.num <- nrow(miami.fem)

ny.data <- filter(major.cities, city %in% c('New York'))
ny.males <- filter(ny.data, gender %in% c('Male'))
ny.males.num <- nrow(ny.males)
ny.fem <- filter(ny.data, gender %in% c('Female'))
ny.fem.num <- nrow(ny.fem)

philadelphia.data <- filter(major.cities, city %in% c('Philadelphia'))
philadelphia.males <- filter(philadelphia.data, gender %in% c('Male'))
philadelphia.males.num <- nrow(philadelphia.males)
philadelphia.fem <- filter(philadelphia.data, gender %in% c('Female'))
philadelphia.fem.num <- nrow(philadelphia.fem)

portland.data <- filter(major.cities, city %in% c('Portland'))
portland.males <- filter(portland.data, gender %in% c('Male'))
portland.males.num <- nrow(portland.males)
portland.fem <- filter(portland.data, gender %in% c('Female'))
portland.fem.num <- nrow(portland.fem)

seattle.data <- filter(major.cities, city %in% c('Seattle'))
seattle.males <- filter(seattle.data, gender %in% c('Male'))
seattle.males.num <- nrow(seattle.males)
seattle.fem <- filter(seattle.data, gender %in% c('Female'))
seattle.fem.num <- nrow(seattle.fem)

BuildChart <- function(major.cities, gender.chart){
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
  
  x.males <- c(boston.males.num, 
               chicago.males.num, 
               dallas.males.num, 
               lv.males.num, 
               la.males.num, 
               miami.males.num, 
               ny.males.num, 
               philadelphia.males.num, 
               portland.males.num, 
               seattle.males.num)
  
  x.fem <- c(boston.fem.num, 
             chicago.fem.num, 
             dallas.fem.num, 
             lv.fem.num, 
             la.fem.num, 
             miami.fem.num, 
             ny.fem.num, 
             philadelphia.fem.num, 
             portland.fem.num, 
             seattle.fem.num)
  
  gender.data <- data.frame(y.cities, x.males, x.fem)
  
  #make chart using plotly
  gender.chart <- plot_ly(gender.data, x = ~x.males, y = ~y.cities, type = 'bar', orientation = 'h', name = 'Males',
                          marker = list(color = 'rgba(58, 71, 80, 0.6)',
                                        line = list(color = 'rgba(58, 71, 80, 1.0)',
                                                    width = 1))) %>%
    add_trace(x = ~x.fem, name = 'Females',
              marker = list(color = 'rgba(246, 78, 139, 0.6)',
                            line = list(color = 'rgba(246, 78, 139, 1.0)',
                                        width = 1))) %>%
    layout(barmode = 'stack',
           title = "Deaths by Gender",
           xaxis = list(title = ""),
           yaxis = list(title =""))
return(gender.chart)
}







