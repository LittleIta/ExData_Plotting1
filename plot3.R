 dataset_filename 	<- "household_power_consumption.txt"

 dataset <- read.csv(dataset_filename, sep=";", na.strings=c("?"))
 epc <- subset(dataset, Date == "1/2/2007" | Date == "2/2/2007")
 png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")
 plot(epc$Sub_metering_1, type="n", xlab="", ylab="Energy Sub Metering", xaxt='n')
 lines(epc$Sub_metering_1, col="black")
 lines(epc$Sub_metering_2, col="red")
 lines(epc$Sub_metering_3, col="blue")
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1), col=c("black", "red", "blue"))
 axis(side=1, labels=c("Thu", "Fri", "Sat"), at=c(0, length(epc$Sub_metering_1)/2, length(epc$Sub_metering_1)))
 dev.off()
 


