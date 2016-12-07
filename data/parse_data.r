setwd("~/OneDrive/Documents/School/INFO 201/Assignments/final_project")

# install.packages('zipcode')
library(zipcode)
library(dplyr)

# load zipcode packages
data("zipcode")

# clean zipcodes in original data file
police.data.original <- read.csv('data/police_original.csv', stringsAsFactors = FALSE)
police.data.original$zip <- clean.zipcodes(police.data.original$zip)

# modify zipcodes data file
keeps <- c('zip', 'latitude', 'longitude')
zipcode.modified <- zipcode[keeps]

# merge both data files by zipcode
police.data.final <- merge(police.data.original, zipcode.modified, by = 'zip') 

# adding age group column for sorting by age
defineAgeGroup <- function(min, max) {
    police.age.group <- filter(police.data.final, age >= min, age < max) %>%
    mutate(age.group = paste0(min, ' - ', max))
    return (police.age.group)
}

# adding age group column for unknowns
defineUnknowns <- function() {
    police.age.group <- filter(police.data.final, age == 'Unknown') %>%
    mutate(age.group = 'Unknown')
    return (police.age.group)
}

# binding the relevant datasets
police.data.final <- rbind(defineAgeGroup(0, 15), defineAgeGroup(15, 30), 
                           defineAgeGroup(30, 45), defineAgeGroup(45, 60), 
                           defineAgeGroup(60, 75), defineAgeGroup(75, 90),
                           defineAgeGroup(90, 105), defineUnknowns())

# export file
write.csv(police.data.final, 'data/police_final.csv')

# still need to polish up certain grouping errors + rename unarmed + add year column