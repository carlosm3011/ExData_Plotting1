# setwd to the folder where data resides

print("Exploratory Data Analysis - carlosm3011 - PLOT3")
setwd("~/Dropbox/Workspaces/Wksp-Personal/40-Cursos/80-Coursera/03-expl-data-analysis/datasets")
hpc <- read.csv("hpc_feb2007.txt", sep=";")
dates <- paste(hpc$Date, hpc$Time)
dates <- strptime(dates, format="%d/%m/%Y %H:%M:%S")
quartz("plot3")
#options(device="RStudioGD")
#dev.new()
#plot.new()
plot(dates, as.numeric(hpc$Sub_metering_1), type="l", ylab="Energy sub metering", xlab=" ")
lines(dates, as.numeric(hpc$Sub_metering_2), col="red", type="l", ylab="")
lines(dates, as.numeric(hpc$Sub_metering_3), col="blue", type="l", ylab="")

legend("topright", "", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lwd=c(1,1,1), col=c("black", "red", "blue"))

dev.copy(png, "plot3.png")
dev.off()