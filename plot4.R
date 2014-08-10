
## four part graph
par(mfcol=c(2,2))
plot(data1$date.time, data1$Global_active_power, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")

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

plot(data1$date.time, data1$Voltage,
     type="l", col="black", xlab="datetime", ylab="Voltage")

plot(data1$date.time, data1$Global_reactive_power,
     type="l", col="black", xlab="datetime", ylab="Global_reactive_power")

dev.off()