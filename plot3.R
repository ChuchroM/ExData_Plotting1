
## reading and subseting data in first R.file with plot1
## linear plot with standar legend in the right top corner of the graph

png(filename="plot3.png", height=480, width=480, 
    bg="white")
Sys.setlocale("LC_ALL", "English")
  plot(data1$date.time, data1$Sub_metering_1, 
       type="l", col="black", xlab="", ylab="Energy sub metering")
    lines(data1$date.time,data1$Sub_metering_2, 
       type="l", col="red")
    lines(data1$date.time,data1$Sub_metering_3, 
       type="l", col="blue")

    legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), 
       lty= "solid")
dev.off()
