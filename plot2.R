 dataset_filename 	<- "household_power_consumption.txt"

 dataset <- read.csv(dataset_filename, sep=";", na.strings=c("?"))
 epc <- subset(dataset, Date == "1/2/2007" | Date == "2/2/2007")
 png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")
 plot(epc$Global_active_power, type="l", xlab="", ylab="Global Active Power (Kilowatts)", xaxt='n')
 axis(side=1,labels=c("Thu", "Fri", "Sat"), at=c(0, length(epc$Global_active_power)/2, length(epc$Global_active_power)))
 dev.off()
 


