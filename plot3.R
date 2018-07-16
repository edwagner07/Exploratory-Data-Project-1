
png("plot 3.png",height = 400,width = 400)

with(smallpower, plot(datetime,Sub_metering_1, type = "n",
                      ylab = "Energy Sub Metering",xlab = ""))


points(smallpower$datetime, smallpower$Sub_metering_1,col = "white")
points(smallpower$datetime, smallpower$Sub_metering_2,col = "white")
points(smallpower$datetime, smallpower$Sub_metering_3,col = "white")


lines(smallpower$datetime, smallpower$Sub_metering_1,col = "black")
lines(smallpower$datetime, smallpower$Sub_metering_2,col = "red")
lines(smallpower$datetime, smallpower$Sub_metering_3,col = "blue")


legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"),lty = 1,lwd = 2)

dev.off()