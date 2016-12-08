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

# --------------------------------------------------------------------
## RACE CHART
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

#------------------------------------------------------------------------
##AGE CHART
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

#-----------------------------------------------------------------------
## RACE CHART
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
