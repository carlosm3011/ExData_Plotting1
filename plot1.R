# setwd to the folder where data resides

print("Exploratory Data Analysis - carlosm3011 - PLOT1")
setwd("~/Dropbox/Workspaces/Wksp-Personal/40-Cursos/80-Coursera/03-expl-data-analysis/datasets")
hpc <- read.csv("hpc_feb2007.txt", sep=";")
quartz("plot1")
plot.new()
hist(hpc$Global_active_power, col="red", main="Global Active Power", xlab="Global active power (kilowatts)")
dev.copy(png, "plot1.png")
dev.off()