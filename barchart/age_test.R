## AGE CHART
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

#extract each age group from each city
boston.first <- filter(boston.data, age.group %in% c('0 - 15'))
boston.first.num <- nrow(boston.first)
boston.second <- filter(boston.data, age.group %in% c('15 - 30'))
boston.second.num <- nrow(boston.second)
boston.third <- filter(boston.data, age.group %in% c('30 - 45'))
boston.third.num <- nrow(boston.third)
boston.fourth <- filter(boston.data, age.group %in% c('45 - 60'))
boston.fourth.num <- nrow(boston.fourth)
boston.fifth <- filter(boston.data, age.group %in% c('60 - 75'))
boston.fifth.num <- nrow(boston.fifth)
boston.sixth <- filter(boston.data, age.group %in% c('75 - 90'))
boston.sixth.num <- nrow(boston.sixth)
boston.seventh <- filter(boston.data, age.group %in% c('90 - Unknown'))
boston.seventh.num <- nrow(boston.seventh)

chicago.first <- filter(chicago.data, age.group %in% c('0 - 15'))
chicago.first.num <- nrow(chicago.first)
chicago.second <- filter(chicago.data, age.group %in% c('15 - 30'))
chicago.second.num <- nrow(chicago.second)
chicago.third <- filter(chicago.data, age.group %in% c('30 - 45'))
chicago.third.num <- nrow(chicago.third)
chicago.fourth <- filter(chicago.data, age.group %in% c('45 - 60'))
chicago.fourth.num <- nrow(chicago.fourth)
chicago.fifth <- filter(chicago.data, age.group %in% c('60 - 75'))
chicago.fifth.num <- nrow(chicago.fifth)
chicago.sixth <- filter(chicago.data, age.group %in% c('75 - 90'))
chicago.sixth.num <- nrow(chicago.sixth)
chicago.seventh <- filter(chicago.data, age.group %in% c('90 - Unknown'))
chicago.seventh.num <- nrow(chicago.seventh)

dallas.first <- filter(dallas.data, age.group %in% c('0 - 15'))
dallas.first.num <- nrow(dallas.first)
dallas.second <- filter(dallas.data, age.group %in% c('15 - 30'))
dallas.second.num <- nrow(dallas.second)
dallas.third <- filter(dallas.data, age.group %in% c('30 - 45'))
dallas.third.num <- nrow(dallas.third)
dallas.fourth <- filter(dallas.data, age.group %in% c('45 - 60'))
dallas.fourth.num <- nrow(dallas.fourth)
dallas.fifth <- filter(dallas.data, age.group %in% c('60 - 75'))
dallas.fifth.num <- nrow(dallas.fifth)
dallas.sixth <- filter(dallas.data, age.group %in% c('75 - 90'))
dallas.sixth.num <- nrow(dallas.sixth)
dallas.seventh <- filter(dallas.data, age.group %in% c('90 - Unknown'))
dallas.seventh.num <- nrow(dallas.seventh)

lv.first <- filter(lv.data, age.group %in% c('0 - 15'))
lv.first.num <- nrow(lv.first)
lv.second <- filter(lv.data, age.group %in% c('15 - 30'))
lv.second.num <- nrow(lv.second)
lv.third <- filter(lv.data, age.group %in% c('30 - 45'))
lv.third.num <- nrow(lv.third)
lv.fourth <- filter(lv.data, age.group %in% c('45 - 60'))
lv.fourth.num <- nrow(lv.fourth)
lv.fifth <- filter(lv.data, age.group %in% c('60 - 75'))
lv.fifth.num <- nrow(lv.fifth)
lv.sixth <- filter(lv.data, age.group %in% c('75 - 90'))
lv.sixth.num <- nrow(lv.sixth)
lv.seventh <- filter(lv.data, age.group %in% c('90 - Unknown'))
lv.seventh.num <- nrow(lv.seventh)

la.first <- filter(la.data, age.group %in% c('0 - 15'))
la.first.num <- nrow(la.first)
la.second <- filter(la.data, age.group %in% c('15 - 30'))
la.second.num <- nrow(la.second)
la.third <- filter(la.data, age.group %in% c('30 - 45'))
la.third.num <- nrow(la.third)
la.fourth <- filter(la.data, age.group %in% c('45 - 60'))
la.fourth.num <- nrow(la.fourth)
la.fifth <- filter(la.data, age.group %in% c('60 - 75'))
la.fifth.num <- nrow(la.fifth)
la.sixth <- filter(la.data, age.group %in% c('75 - 90'))
la.sixth.num <- nrow(la.sixth)
la.seventh <- filter(la.data, age.group %in% c('90 - Unknown'))
la.seventh.num <- nrow(la.seventh)

miami.first <- filter(miami.data, age.group %in% c('0 - 15'))
miami.first.num <- nrow(miami.first)
miami.second <- filter(miami.data, age.group %in% c('15 - 30'))
miami.second.num <- nrow(miami.second)
miami.third <- filter(miami.data, age.group %in% c('30 - 45'))
miami.third.num <- nrow(miami.third)
miami.fourth <- filter(miami.data, age.group %in% c('45 - 60'))
miami.fourth.num <- nrow(miami.fourth)
miami.fifth <- filter(miami.data, age.group %in% c('60 - 75'))
miami.fifth.num <- nrow(miami.fifth)
miami.sixth <- filter(miami.data, age.group %in% c('75 - 90'))
miami.sixth.num <- nrow(miami.sixth)
miami.seventh <- filter(miami.data, age.group %in% c('90 - Unknown'))
miami.seventh.num <- nrow(miami.seventh)

ny.first <- filter(ny.data, age.group %in% c('0 - 15'))
ny.first.num <- nrow(ny.first)
ny.second <- filter(ny.data, age.group %in% c('15 - 30'))
ny.second.num <- nrow(ny.second)
ny.third <- filter(ny.data, age.group %in% c('30 - 45'))
ny.third.num <- nrow(ny.third)
ny.fourth <- filter(ny.data, age.group %in% c('45 - 60'))
ny.fourth.num <- nrow(ny.fourth)
ny.fifth <- filter(ny.data, age.group %in% c('60 - 75'))
ny.fifth.num <- nrow(ny.fifth)
ny.sixth <- filter(ny.data, age.group %in% c('75 - 90'))
ny.sixth.num <- nrow(ny.sixth)
ny.seventh <- filter(ny.data, age.group %in% c('90 - Unknown'))
ny.seventh.num <- nrow(ny.seventh)

philadelphia.first <- filter(philadelphia.data, age.group %in% c('0 - 15'))
philadelphia.first.num <- nrow(philadelphia.first)
philadelphia.second <- filter(philadelphia.data, age.group %in% c('15 - 30'))
philadelphia.second.num <- nrow(philadelphia.second)
philadelphia.third <- filter(philadelphia.data, age.group %in% c('30 - 45'))
philadelphia.third.num <- nrow(philadelphia.third)
philadelphia.fourth <- filter(philadelphia.data, age.group %in% c('45 - 60'))
philadelphia.fourth.num <- nrow(philadelphia.fourth)
philadelphia.fifth <- filter(philadelphia.data, age.group %in% c('60 - 75'))
philadelphia.fifth.num <- nrow(philadelphia.fifth)
philadelphia.sixth <- filter(philadelphia.data, age.group %in% c('75 - 90'))
philadelphia.sixth.num <- nrow(philadelphia.sixth)
philadelphia.seventh <- filter(philadelphia.data, age.group %in% c('90 - Unknown'))
philadelphia.seventh.num <- nrow(philadelphia.seventh)

portland.first <- filter(portland.data, age.group %in% c('0 - 15'))
portland.first.num <- nrow(portland.first)
portland.second <- filter(portland.data, age.group %in% c('15 - 30'))
portland.second.num <- nrow(portland.second)
portland.third <- filter(portland.data, age.group %in% c('30 - 45'))
portland.third.num <- nrow(portland.third)
portland.fourth <- filter(portland.data, age.group %in% c('45 - 60'))
portland.fourth.num <- nrow(portland.fourth)
portland.fifth <- filter(portland.data, age.group %in% c('60 - 75'))
portland.fifth.num <- nrow(portland.fifth)
portland.sixth <- filter(portland.data, age.group %in% c('75 - 90'))
portland.sixth.num <- nrow(portland.sixth)
portland.seventh <- filter(portland.data, age.group %in% c('90 - Unknown'))
portland.seventh.num <- nrow(portland.seventh)

seattle.first <- filter(seattle.data, age.group %in% c('0 - 15'))
seattle.first.num <- nrow(seattle.first)
seattle.second <- filter(seattle.data, age.group %in% c('15 - 30'))
seattle.second.num <- nrow(seattle.second)
seattle.third <- filter(seattle.data, age.group %in% c('30 - 45'))
seattle.third.num <- nrow(seattle.third)
seattle.fourth <- filter(seattle.data, age.group %in% c('45 - 60'))
seattle.fourth.num <- nrow(seattle.fourth)
seattle.fifth <- filter(seattle.data, age.group %in% c('60 - 75'))
seattle.fifth.num <- nrow(seattle.fifth)
seattle.sixth <- filter(seattle.data, age.group %in% c('75 - 90'))
seattle.sixth.num <- nrow(seattle.sixth)
seattle.seventh <- filter(seattle.data, age.group %in% c('90 - Unknown'))
seattle.seventh.num <- nrow(seattle.seventh)

# Builds chart
BuildChart <- function(major.cities, age.chart){
  
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

x.first <- c(boston.first.num, 
             chicago.first.num, 
             dallas.first.num, 
             lv.first.num, 
             la.first.num, 
             miami.first.num, 
             ny.first.num, 
             philadelphia.first.num, 
             portland.first.num, 
             seattle.first.num)

x.second <- c(boston.second.num, 
              chicago.second.num, 
              dallas.second.num, 
              lv.second.num, 
              la.second.num, 
              miami.second.num, 
              ny.second.num, 
              philadelphia.second.num, 
              portland.second.num, 
              seattle.second.num)

x.third <- c(boston.third.num, 
             chicago.third.num, 
             dallas.third.num, 
             lv.third.num, 
             la.third.num, 
             miami.third.num, 
             ny.third.num, 
             philadelphia.third.num, 
             portland.third.num, 
             seattle.third.num)

x.fourth <- c(boston.fourth.num, 
              chicago.fourth.num, 
              dallas.fourth.num, 
              lv.fourth.num, 
              la.fourth.num, 
              miami.fourth.num, 
              ny.fourth.num, 
              philadelphia.fourth.num, 
              portland.fourth.num, 
              seattle.fourth.num)

x.fifth <- c(boston.fifth.num, 
             chicago.fifth.num, 
             dallas.fifth.num, 
             lv.fifth.num, 
             la.fifth.num, 
             miami.fifth.num, 
             ny.fifth.num, 
             philadelphia.fifth.num, 
             portland.fifth.num, 
             seattle.fifth.num)

x.sixth <- c(boston.sixth.num, 
             chicago.sixth.num, 
             dallas.sixth.num, 
             lv.sixth.num, 
             la.sixth.num, 
             miami.sixth.num, 
             ny.sixth.num, 
             philadelphia.sixth.num, 
             portland.sixth.num, 
             seattle.sixth.num)

x.seventh <- c(boston.seventh.num, 
               chicago.seventh.num, 
               dallas.seventh.num, 
               lv.seventh.num, 
               la.seventh.num, 
               miami.seventh.num, 
               ny.seventh.num, 
               philadelphia.seventh.num, 
               portland.seventh.num, 
               seattle.seventh.num)

age.data <- data.frame(y.cities, x.first, x.second, x.third, x.third, x.fourth, x.fifth, x.sixth, x.seventh)

#make chart using plotly
age.chart <- plot_ly(age.data, x = ~x.first, y = ~y.cities, type = 'bar', orientation = 'h', name = '0 - 15',
                     marker = list(color = 'rgba(265, 199, 225, 0.6)',
                                   line = list(color = 'rgba(265, 199, 225, 1.0',
                                               width = 1))) %>%
  add_trace(x = ~x.second, name = '15 - 30',
            marker = list(color = 'rgba(245, 195, 210, 0.6)',
                          line = list(color = 'rgba(245, 195, 210, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.third, name = '30 - 45',
            marker = list(color = 'rgb(205, 155, 155, 0.6)',
                          line = list(color = 'rgba(205, 155, 155, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.fourth, name = '45 - 60',
            marker = list(color = 'rgba(188, 143, 143, 0.6)',
                          line = list(color = 'rgba(188, 143, 143, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.fifth, name = '60 - 75',
            marker = list(color = 'rgba(139, 105, 105, 0.6)',
                          line = list(color = 'rgba(139, 105, 105, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.sixth, name = '75 - 90',
            marker = list(color = 'rgba(240, 128, 128, 0.6)',
                          line = list(color = 'rgba(240, 128, 128, 1.0)',
                                      width = 1))) %>%
  add_trace(x = ~x.seventh, name = '90 - Unknown',
            marker = list(color = 'rgba(205, 92, 92, 0.6)',
                          line = list(color = 'rgba(205, 92, 92, 1.0)',
                                      width = 1))) %>%
  
  layout(barmode = 'stack',
         title = "Deaths by Age Groups",
         xaxis = list(title = ""),
         yaxis = list(title =""))

return(age.chart)
}

