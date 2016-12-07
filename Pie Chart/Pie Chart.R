library(plotly)
library(dplyr)

#Gender
add<- police_final %>% 
  group_by(gender) %>%
  summarise(n()) 

colnames(add)[2]<-"Number"

gender <- plot_ly(add, labels = ~gender, values= ~Number, type = 'pie') %>%
  layout(title = 'Gender',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

#Armed vs Unarmed 
combine <- police_final %>%
  group_by(armed) %>%
  summarise(n()) 

colnames(combine)[2]<-"Number"

armed <- plot_ly(combine, labels = ~armed, values= ~Number, type = 'pie') %>%
  layout(title = 'Armed',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

#Race
addition <- police_final %>%
  group_by(race) %>%
  summarise(n())

colnames(addition)[2]<-"Number"

race <- plot_ly(addition, labels = ~race, values= ~Number, type = 'pie') %>%
  layout(title = 'Race',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

#Age
combination <- police_final%>%
  group_by(age) %>%
  summarise(n()) %>%
  
