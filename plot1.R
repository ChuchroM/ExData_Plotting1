#Plot 1
##reading and subseting data 

data <- read.csv("./Data/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data1 <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

##ploting a histogram with 12 bars and with resolution 480x480, save into a plot1.png file

png(filename="plot1.png", height=480, width=480, 
    bg="white")
hist(data1$Global_active_power, col="red", brakes=12, main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()



