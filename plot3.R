data = read.csv("household_power_consumption_hw.txt", sep=";")
png("plot3.png")
plot(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), 
     pmax(as.numeric(data$Sub_metering_1), as.numeric(data$Sub_metering_2), as.numeric(data$Sub_metering_3)), 
     type="n", main="", xlab="", ylab="Energy sub metering")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_1), col="black")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_2), col="red")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_3), col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lwd=c(1,1,1))
dev.off()
