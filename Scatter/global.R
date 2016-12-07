install.packages("shiny")
install.packages("plotly")
install.packages("dplyr")
data <- read.csv("city_population.csv")
data <- as.data.frame(data)

# Group by stage and summerise Population total
library(dplyr)
data.summary <- data %>% 
            group_by(State) %>%
            summarise(Total.Population = sum(Total.Population),
                      White.People = sum(White),
                      Black.Population = sum(Black),
                      Total.Killed.by.Police = sum (All.People.Killed.by.Police..2013.2015.),
                      Black.Killed.by.Police = sum(Black.People.Killed.by.Police..2013.2015.))

# Adding columns of Black Population percentage of each state & Black Killed Population of Police Brutality Cases
data.summary <- data.summary %>%
            filter(State != "United States") %>%
            mutate(Black.Population.Percentage = Black.Population / Total.Population * 100) %>%
            mutate(Black.Victim.Percentage = Black.Killed.by.Police / Total.Killed.by.Police * 100)

library(plotly)

# Bar data based on States
y <- data.summary$State
Black.Individuals <- data.summary$Black.Killed.by.Police
Total.Individuals <- data.summary$Total.Killed.by.Police
data <- data.frame(y, Black.Individuals, Total.Individuals)

p <- plot_ly(data, x = ~Black.Individuals, y = ~y, type = 'bar', 
             orientation = 'h', name = 'Black Individuals',
             marker = list(color = 'YELLOW',
                           width = 4)) %>%
  add_trace(x = ~Total.Individuals - Black.Individuals, name = 'All Individuals',
            marker = list(color = 'GREY',
                          width = 4)) %>%
  layout(barmode = 'stack',
         xaxis = list(title = ""),
         yaxis = list(title =""))
p





