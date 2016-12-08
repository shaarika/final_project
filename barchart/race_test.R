## RACE CHART
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

#extract each race from each city
boston.asian <- filter(boston.data, race %in% c('Asian'))
boston.asian.num <- nrow(boston.asian)
boston.black <- filter(boston.data, race %in% c('Black'))
boston.black.num <- nrow(boston.black)
boston.hispanic <- filter(boston.data, race %in% c('Hispanic'))
boston.hispanic.num <- nrow(boston.hispanic)
boston.native.american <- filter(boston.data, race %in% c('Native American'))
boston.native.american.num <- nrow(boston.native.american)
boston.unknown <- filter(boston.data, race %in% c('Unknown race'))
boston.unknown.num <- nrow(boston.unknown)
boston.white <- filter(boston.data, race %in% c('White'))
boston.white.num <- nrow(boston.white)

chicago.asian <- filter(chicago.data, race %in% c('Asian'))
chicago.asian.num <- nrow(chicago.asian)
chicago.black <- filter(chicago.data, race %in% c('Black'))
chicago.black.num <- nrow(chicago.black)
chicago.hispanic <- filter(chicago.data, race %in% c('Hispanic'))
chicago.hispanic.num <- nrow(chicago.hispanic)
chicago.native.american <- filter(chicago.data, race %in% c('Native American'))
chicago.native.american.num <- nrow(chicago.native.american)
chicago.unknown <- filter(chicago.data, race %in% c('Unknown race'))
chicago.unknown.num <- nrow(chicago.unknown)
chicago.white <- filter(chicago.data, race %in% c('White'))
chicago.white.num <- nrow(chicago.white)

dallas.asian <- filter(dallas.data, race %in% c('Asian'))
dallas.asian.num <- nrow(dallas.asian)
dallas.black <- filter(dallas.data, race %in% c('Black'))
dallas.black.num <- nrow(dallas.black)
dallas.hispanic <- filter(dallas.data, race %in% c('Hispanic'))
dallas.hispanic.num <- nrow(dallas.hispanic)
dallas.native.american <- filter(dallas.data, race %in% c('Native American'))
dallas.native.american.num <- nrow(dallas.native.american)
dallas.unknown <- filter(dallas.data, race %in% c('Unknown race'))
dallas.unknown.num <- nrow(dallas.unknown)
dallas.white <- filter(dallas.data, race %in% c('White'))
dallas.white.num <- nrow(dallas.white)

lv.asian <- filter(lv.data, race %in% c('Asian'))
lv.asian.num <- nrow(lv.asian)
lv.black <- filter(lv.data, race %in% c('Black'))
lv.black.num <- nrow(lv.black)
lv.hispanic <- filter(lv.data, race %in% c('Hispanic'))
lv.hispanic.num <- nrow(lv.hispanic)
lv.native.american <- filter(lv.data, race %in% c('Native American'))
lv.native.american.num <- nrow(lv.native.american)
lv.unknown <- filter(lv.data, race %in% c('Unknown race'))
lv.unknown.num <- nrow(lv.unknown)
lv.white <- filter(lv.data, race %in% c('White'))
lv.white.num <- nrow(lv.white)

la.asian <- filter(la.data, race %in% c('Asian'))
la.asian.num <- nrow(la.asian)
la.black <- filter(la.data, race %in% c('Black'))
la.black.num <- nrow(la.black)
la.hispanic <- filter(la.data, race %in% c('Hispanic'))
la.hispanic.num <- nrow(la.hispanic)
la.native.american <- filter(la.data, race %in% c('Native American'))
la.native.american.num <- nrow(la.native.american)
la.unknown <- filter(la.data, race %in% c('Unknown race'))
la.unknown.num <- nrow(la.unknown)
la.white <- filter(la.data, race %in% c('White'))
la.white.num <- nrow(la.white)

miami.asian <- filter(miami.data, race %in% c('Asian'))
miami.asian.num <- nrow(miami.asian)
miami.black <- filter(miami.data, race %in% c('Black'))
miami.black.num <- nrow(miami.black)
miami.hispanic <- filter(miami.data, race %in% c('Hispanic'))
miami.hispanic.num <- nrow(miami.hispanic)
miami.native.american <- filter(miami.data, race %in% c('Native American'))
miami.native.american.num <- nrow(miami.native.american)
miami.unknown <- filter(miami.data, race %in% c('Unknown race'))
miami.unknown.num <- nrow(miami.unknown)
miami.white <- filter(miami.data, race %in% c('White'))
miami.white.num <- nrow(miami.white)

ny.asian <- filter(ny.data, race %in% c('Asian'))
ny.asian.num <- nrow(ny.asian)
ny.black <- filter(ny.data, race %in% c('Black'))
ny.black.num <- nrow(ny.black)
ny.hispanic <- filter(ny.data, race %in% c('Hispanic'))
ny.hispanic.num <- nrow(ny.hispanic)
ny.native.american <- filter(ny.data, race %in% c('Native American'))
ny.native.american.num <- nrow(ny.native.american)
ny.unknown <- filter(ny.data, race %in% c('Unknown race'))
ny.unknown.num <- nrow(ny.unknown)
ny.white <- filter(ny.data, race %in% c('White'))
ny.white.num <- nrow(ny.white)

philadelphia.asian <- filter(philadelphia.data, race %in% c('Asian'))
philadelphia.asian.num <- nrow(philadelphia.asian)
philadelphia.black <- filter(philadelphia.data, race %in% c('Black'))
philadelphia.black.num <- nrow(philadelphia.black)
philadelphia.hispanic <- filter(philadelphia.data, race %in% c('Hispanic'))
philadelphia.hispanic.num <- nrow(philadelphia.hispanic)
philadelphia.native.american <- filter(philadelphia.data, race %in% c('Native American'))
philadelphia.native.american.num <- nrow(philadelphia.native.american)
philadelphia.unknown <- filter(philadelphia.data, race %in% c('Unknown race'))
philadelphia.unknown.num <- nrow(philadelphia.unknown)
philadelphia.white <- filter(philadelphia.data, race %in% c('White'))
philadelphia.white.num <- nrow(philadelphia.white)

portland.asian <- filter(portland.data, race %in% c('Asian'))
portland.asian.num <- nrow(portland.asian)
portland.black <- filter(portland.data, race %in% c('Black'))
portland.black.num <- nrow(portland.black)
portland.hispanic <- filter(portland.data, race %in% c('Hispanic'))
portland.hispanic.num <- nrow(portland.hispanic)
portland.native.american <- filter(portland.data, race %in% c('Native American'))
portland.native.american.num <- nrow(portland.native.american)
portland.unknown <- filter(portland.data, race %in% c('Unknown race'))
portland.unknown.num <- nrow(portland.unknown)
portland.white <- filter(portland.data, race %in% c('White'))
portland.white.num <- nrow(portland.white)

seattle.asian <- filter(seattle.data, race %in% c('Asian'))
seattle.asian.num <- nrow(seattle.asian)
seattle.black <- filter(seattle.data, race %in% c('Black'))
seattle.black.num <- nrow(seattle.black)
seattle.hispanic <- filter(seattle.data, race %in% c('Hispanic'))
seattle.hispanic.num <- nrow(seattle.hispanic)
seattle.native.american <- filter(seattle.data, race %in% c('Native American'))
seattle.native.american.num <- nrow(seattle.native.american)
seattle.unknown <- filter(seattle.data, race %in% c('Unknown race'))
seattle.unknown.num <- nrow(seattle.unknown)
seattle.white <- filter(seattle.data, race %in% c('White'))
seattle.white.num <- nrow(seattle.white)

BuildChart <- function(major.cities, race.chart){

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

x.asian <- c(boston.asian.num, 
             chicago.asian.num, 
             dallas.asian.num, 
             lv.asian.num, 
             la.asian.num, 
             miami.asian.num, 
             ny.asian.num, 
             philadelphia.asian.num, 
             portland.asian.num, 
             seattle.asian.num)

x.black <- c(boston.black.num, 
             chicago.black.num, 
             dallas.black.num, 
             lv.black.num, 
             la.black.num, 
             miami.black.num, 
             ny.black.num, 
             philadelphia.black.num, 
             portland.black.num, 
             seattle.black.num)

x.hispanic <- c(boston.hispanic.num, 
                chicago.hispanic.num, 
                dallas.hispanic.num, 
                lv.hispanic.num, 
                la.hispanic.num, 
                miami.hispanic.num, 
                ny.hispanic.num, 
                philadelphia.hispanic.num, 
                portland.hispanic.num, 
                seattle.hispanic.num)

x.native.american <- c(boston.native.american.num, 
                       chicago.native.american.num, 
                       dallas.native.american.num, 
                       lv.native.american.num, 
                       la.native.american.num, 
                       miami.native.american.num,
                       ny.native.american.num, 
                       philadelphia.native.american.num, 
                       portland.native.american.num, 
                       seattle.native.american.num)

x.unknown <- c(boston.unknown.num, 
               chicago.unknown.num, 
               dallas.unknown.num, 
               lv.unknown.num, 
               la.unknown.num, 
               miami.unknown.num, 
               ny.unknown.num, 
               philadelphia.unknown.num, 
               portland.unknown.num, 
               seattle.unknown.num)

x.white <- c(boston.white.num, 
             chicago.white.num, 
             dallas.white.num, 
             lv.white.num, 
             la.white.num, 
             miami.white.num, 
             ny.white.num, 
             philadelphia.white.num, 
             portland.white.num, 
             seattle.white.num)

race.data <- data.frame(y.cities, x.asian, x.black, x.hispanic, x.native.american, x.unknown, x.white)

  #make chart using plotly
race.chart <- plot_ly(race.data, x = ~x.asian, y = ~y.cities, type = 'bar', orientation = 'h', name = 'Asian',
                      marker = list(color = 'rgba(142, 56, 142, 0.6)',
                                    line = list(color = 'rgba(142, 56, 142, 1.0',
                                                width = 1))) %>%
  add_trace(x = ~x.black, name = 'Black',
            marker = list(color = 'rgba(113, 113, 198, 0.6)',
                          line = list(color = 'rgba(113, 113, 198, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.hispanic, name = 'Hispanic',
            marker = list(color = 'rgb(125, 158, 192, 0.6)',
                          line = list(color = 'rgba(125, 158, 192, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.native.american, name = 'Native American',
            marker = list(color = 'rgba(56, 142, 142, 0.6)',
                          line = list(color = 'rgba(56, 142, 142, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.unknown, name = 'Unknown',
            marker = list(color = 'rgba(113, 198, 113, 0.6)',
                          line = list(color = 'rgba(113, 198, 113, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.white, name = 'White',
            marker = list(color = 'rgba(142, 142, 56, 0.6)',
                          line = list(color = 'rgba(142, 142, 56, 1.0)',
                                      width = 1))) %>%
  
  layout(barmode = 'stack',
         title = "Deaths by Race",
         xaxis = list(title = ""),
         yaxis = list(title =""))
return(race.chart)
}

