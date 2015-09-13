data = read.csv("household_power_consumption_hw.txt", sep=";")
png("plot1.png")
hist(as.numeric(data$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()