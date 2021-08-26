# load the packages
library("tidyverse")
# import the data
hotel_bookings <- read.csv("hotel_bookings.csv")

# summarise the data by head function
head(hotel_bookings)

# look at the column  names of the dataset
colnames(hotel_bookings)

# install visual packages
install.packages("ggplot2")
library(ggplot2)
#A stakeholder tells you, "I want to target people who book early, 
#and I have a hypothesis that people with children have to book 
#in advance."

ggplot(data = hotel_bookings)+geom_point(mapping = aes(x=lead_time,y=children))

#Next, your stakeholder says that she wants to increase weekend 
#bookings, an important source of revenue for the hotel. 
#Your stakeholder wants to know what group of guests book the 
#most weekend nights in order to target that group in a new 
#marketing campaign. She suggests that guests without children book the most weekend nights. Is this true? 

ggplot(data = hotel_bookings)+geom_point(mapping =aes(x=stays_in_weekend_nights,y=children))
