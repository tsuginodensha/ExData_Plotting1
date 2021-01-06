png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
#### Graph 1,1 ####
plot(powerfeb$datetime, powerfeb$Global_active_power, type="s", xlab="", ylab="Global Active Power")

#### Graph 1,2 ####
plot(powerfeb$datetime, powerfeb$Voltage, type="s", xlab="datetime", ylab="Voltage")

#### Graph 2,1 ####
plot(powerfeb$datetime, powerfeb$Sub_metering_1, type="s", xlab="", ylab="Energy sub metering")
lines(powerfeb$datetime, powerfeb$Sub_metering_2, col = "red", type = "s")
lines(powerfeb$datetime, powerfeb$Sub_metering_3, col = "blue", type = "s")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty = 1, cex=0.8)

#### Graph 2,2 ####
plot(powerfeb$datetime, powerfeb$Global_reactive_power, type="s", xlab="datetime", ylab="Global_reactive_power")

dev.off()
