
## reading and subseting data in R.file with first plot
##linear plot of Global Active Power, with x label in days, save in plot2.png file

png(filename="plot2.png", height=480, width=480, 
    bg="white")
Sys.setlocale("LC_ALL", "English")

plot(data1$Global_active_power~data1$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
