library(ggplot2)
library(tidyr)
library(dplyr)

# My Drive mounts to a strange place, but this works:
flights = read.csv('I:/.shortcut-targets-by-id/1ehWwunuAo7CE1Vk2JYkUnQMmxh5pph3C/DATA/flights.csv')

head(flights)

ggplot(data=flights) + geom_line(aes(x=year, y=passengers, color=month)) + 
  xlab('Year') + ylab('Number of Passengers') + ggtitle('Number of Passengers by Month')