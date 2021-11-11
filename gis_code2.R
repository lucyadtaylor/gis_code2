x<- 1+1
b<- 2+2
print(x+b)
t<-2
library(sf)
library(janitor)
inequality <- read.csv("GIIfull.csv")%>%
  clean_names()
countries <- read_sf('World_Countries__Generalized_.shp')

colnames(inequality)[2] <- "COUNTRY"
library(raster)
worldinequality <- merge(inequality, countries, by='COUNTRY')

v <- 5+5
t <- v-3