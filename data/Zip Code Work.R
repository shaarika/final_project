install.packages("zipcode")
PolicePractice <- read.csv("PoliceKilling.csv")
data("zipcode")
PolicePractice$zip = clean.zipcodes(PolicePractice$Location.of.death..zip.code.)
Police.Killings = merge(PolicePractice, zipcode, by.x = 'zip', by.y = 'zip') 
Police <- select(Police.Killings, Date.of.injury.resulting.in.death..month.day.year., Victim.s.age, Victim.s.gender, Victim.s.race, 
                 Cause.of.death, Unarmed, city, state, zip, latitude, longitude)