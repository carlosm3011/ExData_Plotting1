# setwd to the folder where data resides

print("Exploratory Data Analysis - carlosm3011 - PLOT4")
setwd("~/Dropbox/Workspaces/Wksp-Personal/40-Cursos/80-Coursera/03-expl-data-analysis/datasets")
hpc <- read.csv("hpc_feb2007.txt", sep=";")
dates <- paste(hpc$Date, hpc$Time)
dates <- strptime(dates, format="%d/%m/%Y %H:%M:%S")
#quartz("plot4")
#options(device="RStudioGD")
#dev.new()
plot.new()
# set multiple plot
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0), cex=0.6)

#make splot1
plot(dates, as.numeric(hpc$Global_active_power), type="l", ylab="Global active power (kilowatts)", xlab="")

#make splot2
plot(dates, as.numeric(hpc$Voltage), type="l", ylab="Voltage", xlab="")

#make splot4
plot(dates, as.numeric(hpc$Sub_metering_1), type="l", ylab="Energy sub metering", xlab=" ")
lines(dates, as.numeric(hpc$Sub_metering_2), col="red", type="l", ylab="")
lines(dates, as.numeric(hpc$Sub_metering_3), col="blue", type="l", ylab="")
legend("topright", "", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lwd=c(1,1,1), col=c("black", "red", "blue"))

#make splot3
plot(dates, as.numeric(hpc$Global_reactive_power), type="l", ylab="Global_reactive_power", xlab="")

dev.copy(png, "plot4.png")
dev.off()