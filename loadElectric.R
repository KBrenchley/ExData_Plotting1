## Loads Household Power Consumption dataset and gets it ready for the plot functions

## read in dataset

electric <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

## turn the data from factors into usable values

electric$Date <- as.character(electric$Date)
electric$Date <- as.Date(electric$Date, format = "%d/%m/%Y")

## select the days we're interested in (2/1/07 - 2/2/07)
plot_days <- subset(electric, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

## remove the bulk of the data set that we don't want
rm(electric)

## finish cleaning up date/time

plot_days$Time <- as.character(plot_days$Time)
plot_days$Date <- strptime(paste(plot_days$Date,plot_days$Time), "%Y-%m-%d %H:%M:%S")

## clean up Global Active Power to make it numeric

plot_days$Global_active_power <- as.numeric(as.character(plot_days$Global_active_power))

## clean up the Sub_metering_n columns to make them numeric

plot_days$Sub_metering_1 <- as.numeric(as.character(plot_days$Sub_metering_1))
plot_days$Sub_metering_2 <- as.numeric(as.character(plot_days$Sub_metering_2))
plot_days$Sub_metering_3 <- as.numeric(as.character(plot_days$Sub_metering_3))


