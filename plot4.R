
 dataset_filename 	<- "household_power_consumption.txt"

 dataset <- read.csv(dataset_filename, sep=";", na.strings=c("?"))
 epc <- subset(dataset, Date == "1/2/2007" | Date == "2/2/2007")
 png(filename = "plot4.png", width = 480, height = 480,  bg = "transparent")
 par(mfcol=c(2,2), cex=0.75)
# Plot 1
 plot(epc$Global_active_power, type="l", xlab="", ylab="Global Active Power", xaxt='n')
 axis(side=1,labels=c("Thu", "Fri", "Sat"), at=c(0, length(epc$Global_active_power)/2, length(epc$Global_active_power)))
# Plot 2
 plot(epc$Sub_metering_1, type="n", xlab="", ylab="Energy Sub Metering", xaxt='n')
 lines(epc$Sub_metering_1, col="black")
 lines(epc$Sub_metering_2, col="red")
 lines(epc$Sub_metering_3, col="blue")
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1), col=c("black", "red", "blue"), bty="n")
 axis(side=1, labels=c("Thu", "Fri", "Sat"), at=c(0, length(epc$Sub_metering_1)/2, length(epc$Sub_metering_1)))
# Plot 3
 plot(epc$Voltage, type="l", xlab="datetime", ylab="Voltage", xaxt='n')
 axis(side=1,labels=c("Thu", "Fri", "Sat"), at=c(0, length(epc$Voltage)/2, length(epc$Voltage)))
# Plot 4
 plot(epc$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", xaxt='n')
 axis(side=1,labels=c("Thu", "Fri", "Sat"), at=c(0, length(epc$Global_reactive_power)/2, length(epc$Global_reactive_power)))
 
dev.off()
 


