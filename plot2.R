#Create time vector
date <- as.Date(powerData$Date, format = "%d/%m/%Y")
time <- strptime(powerData$Time, format = "%H:%M:%S")
timeVector <- as.POSIXct(paste(date, powerData$Time))
#Plot Global_active_power vs timeVector
plot(timeAxis, powerData$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l" )
dev.copy(png, file="plot2.png",width=480, height=480)
dev.off()
