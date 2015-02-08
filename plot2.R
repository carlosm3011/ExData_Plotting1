# setwd to the folder where data resides

print("Exploratory Data Analysis - carlosm3011 - PLOT2")
setwd("~/Dropbox/Workspaces/Wksp-Personal/40-Cursos/80-Coursera/03-expl-data-analysis/datasets")
hpc <- read.csv("hpc_feb2007.txt", sep=";")
dates <- paste(hpc$Date, hpc$Time)
dates <- strptime(dates, format="%d/%m/%Y %H:%M:%S")
quartz("plot2")
plot.new()
plot(dates, as.numeric(hpc$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, "plot2.png")
dev.off()