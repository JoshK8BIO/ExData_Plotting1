#Read in power data
powerData <- read.table("data.txt", header=T , sep =  ";", dec = "." , na.strings = "?")
#Subset power data between specified dates
powerData <- powerData[powerData$Date %in% c("1/2/2007", "2/2/2007"), ]

#Create histogram
hist(powerData$Global_active_power, col="red", main="Global Active Power", 
     xlab= "Global Active Power (kilowatts)") 
dev.copy(png, file="plot1.png",width=480, height=480)
dev.off()
