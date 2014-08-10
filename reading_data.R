##reading unziped data .txt from working directory.
library(lubridate)
data<-read.table("household_power_consumption.txt", 
                 header=TRUE, sep=";",colClasses=c(rep("character",2),rep("numeric",7)),na.strings="?")
##modyfing the date and time into corrent for R form
data$Date<-dmy(data$Date)
data$Time<-hms(data$Time)

##subseting data only from two days, required in task
data1<-subset(data, year(Date)==2007&
                month(Date)==2&
                (day(Date)==1 |day(Date)==2))

##summing time and date, needed for plot with x label in "days"
data1$date.time <- data1$Date + data1$Time