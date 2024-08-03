#Plot each Sub_metering as its own line
plot(timeVector, powerData$Sub_metering_1, xlab="", ylab = "Energy sub metering", type = "l")
lines(timeVector, powerData$Sub_metering_2, col = "red")
lines(timeVector, powerData$Sub_metering_3, col = "blue")
#Add a legend 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty=1)
dev.copy(png, file="plot3.png",width=480, height=480)
dev.off()
