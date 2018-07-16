png("plot 4.png",height = 400,width = 400)

par(mar = c(4,4,2,2),mfrow = c(2,2))

with(smallpower, {
    plot(datetime,Global_active_power, col = "white", 
         ylab = "Global Active Power (kilowatts)", 
         xlab = "")
    lines(datetime,Global_active_power, type = "l")
    plot(datetime,Voltage, col = "white")
    lines(datetime,Voltage, type = "l", col = "black")
    plot(datetime,Sub_metering_1, type = "n",
         ylab = "Energy Sub Metering",xlab = "")


    points(smallpower$datetime, smallpower$Sub_metering_1,col = "white")
    points(smallpower$datetime, smallpower$Sub_metering_2,col = "white")
    points(smallpower$datetime, smallpower$Sub_metering_3,col = "white")


    lines(smallpower$datetime, smallpower$Sub_metering_1,col = "black")
    lines(smallpower$datetime, smallpower$Sub_metering_2,col = "red")
    lines(smallpower$datetime, smallpower$Sub_metering_3,col = "blue")


    legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"),lty = 1,lwd = 2)
    
    plot(datetime,Global_reactive_power,col = "white")
    lines(datetime,Global_reactive_power,type = "l", col = "black")


})


dev.off()