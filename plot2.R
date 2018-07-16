smallpower$datetime = as.POSIXct(paste(smallpower$Date,smallpower$Time),
                                 format = "%Y-%m-%d %H:%M:%S")

png("plot 2.png", width = 400, height = 400)
with(smallpower,plot(datetime,Global_active_power, col = "white", 
                     ylab = "Global Active Power (kilowatts)", 
                     xlab = ""))

with(smallpower,lines(datetime,Global_active_power, type = "l"))
dev.off()