##linear plot of Global Active Power, with x label in days, save in plot2.png file

png(filename="plot2.png", height=480, width=480, 
    bg="white", col="black")
plot(data1$date.time, data1$Global_active_power, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
dev.off()