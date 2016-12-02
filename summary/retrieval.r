# Shaarika
# Retrieving summary information
library(dplyr)

shooting.data  <- read.csv("data/police_killings.csv", stringsAsFactors = FALSE)
is.data.frame(data)



# Ages range
age.data <- filter(shooting.data, Victim.s.age != "Unknown")

oldest <- select(age.data, Victim.s.age) %>%
  filter(Victim.s.age == max(Victim.s.age))

youngest <- select(age.data, Victim.s.age) %>%
  filter(Victim.s.age == min(Victim.s.age))

range <- oldest[1,] - youngest[1,]

# 