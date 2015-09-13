data = read.csv("household_power_consumption_hw.txt", sep=";")
png("plot4.png")
par(mfrow=c(2,2))

#1
plot(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Global_active_power), type="n", main="", xlab="", ylab="Global Active Power (kilowatts)")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Global_active_power))

#2
plot(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Voltage), type="n", main="", xlab="Datetime", ylab="Voltage")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Voltage))

#3
plot(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), 
     pmax(as.numeric(data$Sub_metering_1), as.numeric(data$Sub_metering_2), as.numeric(data$Sub_metering_3)), 
     type="n", main="", xlab="", ylab="Energy sub metering")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_1), col="black")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_2), col="red")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_3), col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", col = c("black","red","blue"), lwd=c(1,1,1))

#4
plot(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Global_reactive_power), type="n", main="", xlab="Datetime", ylab="Global Reactive Power")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Global_reactive_power))

dev.off()