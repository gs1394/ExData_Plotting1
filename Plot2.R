
#Construction of PNG Plot2 for House hold energy consumption

datafile <- "./household_power_consumption.txt"
power_data <- read.table(datafile, header=TRUE, sep=";")

subset_data <- power_data[power_data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

GlobalActivePower <- as.numeric(subset_data$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
