## Reading the dataset into R

library(chron)

power = read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?")

power$Date = as.Date(power$Date,format = "%d/%m/%Y")
power$Time = chron(times = power$Time)

smallpower = subset(power, power$Date == "2007-02-01" | power$Date == "2007-02-02")
