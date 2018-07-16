
png(filename = "plot 1.png",width = 400, height = 400)
hist(smallpower$Global_active_power, col = "red", breaks = 12, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
