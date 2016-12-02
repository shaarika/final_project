setwd("~/OneDrive/Documents/School/INFO 201/Assignments/final_project")

# install.packages('zipcode')
library(zipcode)
library(dplyr)

# load zipcode packages
data("zipcode")

# clean zipcodes in original data file
police.data.original <- read.csv('data/police_original.csv')
police.data.original$zip <- clean.zipcodes(police.data.original$zip)

# modify zipcodes data file
keeps <- c('zip', 'latitude', 'longitude')
zipcode.modified <- zipcode[keeps]

# merge both data files by zipcode
police.data.final <- merge(police.data.original, zipcode.modified, by = 'zip') 

# export file
write.csv(police.data.final, 'data/police_final.csv')
