
setwd( "C:/Users/Azam/Desktop/CourseraDataAnalysis")
myData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
mySub <- myData[myData$Date %in% c("1/2/2007", "2/2/2007"),]
mySub$Datetime <- strptime(paste(mySub$Date, mySub$Time), "%d/%m/%Y %H:%M:%S")

##plot3
plot(mySub$Datetime, mySub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(mySub$Datetime, mySub$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", 
       col = "red")
points(mySub$Datetime, mySub$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()