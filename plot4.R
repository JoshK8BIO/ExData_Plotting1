#Set parameters for 2x2 layout
par(mfrow = c(2,2))
#plot Global_active_power vs timeVector
plot(timeVector, powerData$Global_active_power, xlab="", ylab = "Global Active Power (kilowatts)", type = "l")
#plot Voltage vs timeVector
plot(timeVector, powerData$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
#Add plot3
plot(timeVector, powerData$Sub_metering_1, xlab="", ylab = "Energy sub metering", type = "l")
lines(timeVector, powerData$Sub_metering_2, col = "red")
lines(timeVector, powerData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1 , bty = "n")
#plot Global_reactive_power vs timeVector
plot(timeVector, powerData$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.copy(png, file="plot4.png",width=480, height=480)
dev.off()
