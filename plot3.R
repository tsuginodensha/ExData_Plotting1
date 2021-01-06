png("plot3.png", width = 480, height = 480)
plot(powerfeb$datetime, powerfeb$Sub_metering_1, type="s", xlab="", ylab="Energy sub metering")
lines(powerfeb$datetime, powerfeb$Sub_metering_2, col = "red", type = "s")
lines(powerfeb$datetime, powerfeb$Sub_metering_3, col = "blue", type = "s")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty = 1, cex=0.8)
dev.off()
