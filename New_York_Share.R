## New York City Bike Share raw data import into R ----------------------------- 
head(new_york_city)
## Check System time and Timezone ----------------------------------------------
Sys.time()
Sys.timezone()
# relabel New York City data file------------------------------------------------
NYC <- new_york_city
NYC
head(NYC)

# reformatted Start Time and End Time to leave out time and Keep Date-----------

NYC$`Start Time`<-as.Date(NYC$`Start Time`, "%m/%d/%Y")
order(NYC$`Start Time`)
head(NYC$`Start Time`)
NYC$`End Time`<-as.Date(NYC$`End Time`, "%m/%d/%Y")
order(NYC$`End Time`)
head(NYC$`End Time`)
head(NYC)
head(NYC$`Start Time`)
head(NYC$`End Time`)
Trip_D <-(NYC$`Trip Duration`)
head(Trip_D)

##---Combined two columns Start Time and End Time ------------------------------

NYC$STET<-paste(NYC$`Start Time`,NYC$`End Time`)
head(NYC$STET)
class(NYC$STET)
Trip_D

NYC_Bike <-paste(NYC$STET, Trip_D)
head(NYC_Bike)

NYC$STET <- as.POSIXct("2017-06-11")
str(NYC$STET)
head(NYC$STET)

