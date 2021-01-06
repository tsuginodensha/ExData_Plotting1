png("plot2.png", width = 480, height = 480)
plot(powerfeb$datetime, powerfeb$Global_active_power, type="s", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
