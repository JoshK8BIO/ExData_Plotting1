date <- as.Date(powerData$Date, format = "%d/%m/%Y")
time <- strptime(powerData$Time, format = "%H:%M:%S")
timeAxis <- as.POSIXct(paste(date, powerData$Time))
plot(timeAxis, powerData$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "1" )
