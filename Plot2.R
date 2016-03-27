pdata<-read.table("household_power_consumption.txt", header = TRUE, sep=";")
pdata1<-pdata[pdata$Date %in% c("1/2/2007", "2/2/2007"),]
dataday <- strptime(paste(pdata1$Date, pdata1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(dataday, as.numeric(pdata1$Global_active_power), type="l", main = "Global Active Power Consumption", xlab="", ylab = "Global Active Power in Kilowatts")
dev.off()
 
+plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
+dev.off() 