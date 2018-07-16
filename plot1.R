
png(filename = "plot 1.png",width = 480, height = 480)
hist(smallpower$Global_active_power, col = "red", breaks = 12, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
