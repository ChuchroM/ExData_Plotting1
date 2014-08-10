
##ploting a histogram with 12 bars and with resolution 480x480, save into a plot1.png file

png(filename="plot1.png", height=480, width=480, 
    bg="white")
hist(data1$Global_active_power, col="red", brakes=12, main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()



