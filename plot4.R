#reading data
setwd( "C:/Users/Azam/Desktop/CourseraDataAnalysis")
myData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
mySub <- myData[myData$Date %in% c("1/2/2007", "2/2/2007"),]
mySub$Datetime <- strptime(paste(mySub$Date, mySub$Time), "%d/%m/%Y %H:%M:%S")

##plot4
par(mfrow = c(2, 2))
#plot1
plot(mySub$Datetime, mySub$Global_active_power, type = "l", ylab = "Global Active Power", 
     xlab = "")
#plot2
plot(mySub$Datetime, mySub$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
#plot3
plot(mySub$Datetime, mySub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(mySub$Datetime, mySub$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", 
       col = "red")
points(mySub$Datetime, mySub$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
#plot4
plot(mySub$Datetime, mySub$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", ylim = c(0, 0.5))
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()