######################### import, clean and subset dataset ##########################
power <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
library(lubridate)
power$Date=dmy(power$Date)
power$datetime = ymd_hms(paste(power$Date, power$Time))
power$Global_active_power=as.numeric(power$Global_active_power)
powerfeb = rbind(power[power$Date == "2007-02-01",], power[power$Date == "2007-02-02",])

######################### plot histogram and export ##########################

png("plot1.png", width = 480, height = 480)
hist(powerfeb$Global_active_power, col = "red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
