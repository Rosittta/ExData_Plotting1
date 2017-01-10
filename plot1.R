setwd( "C:/Users/Azam/Desktop/CourseraDataAnalysis")
myData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
mySub <- myData[myData$Date %in% c("1/2/2007", "2/2/2007"),]
mySub$Datetime <- strptime(paste(mySub$Date, mySub$Time), "%d/%m/%Y %H:%M:%S")
hist(mySub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()

