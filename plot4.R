plot4 <- function() {
## plot4.R

## Plots four charts 
## of the individual household electric power consumption data set 
## for the dates 2/1/07 - 2/2/07

## begin plotting

png(filename = "plot4.png", width = 480, height = 480, units = "px")

## set plots to be 2 x 2
par(mfrow = c(2, 2))

## plot2
plot(plot_days$Date, plot_days$Global_active_power, type = "l", lty = "solid", main = "", xlab = "",
     ylab = "Global Active Power (kilowatts)", col="black")

## plots Date against Voltage
plot(plot_days$Date, plot_days$Voltage, type = "l", lty = "solid", main = "", xlab = "datetime",
     ylab = "Voltage", col="black")

## plot3
plot(plot_days$Date, plot_days$Sub_metering_1, type = "l", lty = "solid",  col="black", 
     main = "", xlab = "", ylab = "Energy sub metering")

points(plot_days$Date, plot_days$Sub_metering_2, type = "l", lty = "solid", col = "red")
points(plot_days$Date, plot_days$Sub_metering_3, type = "l", lty = "solid", col = "blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = "solid", col = c("black", "red", "blue"))

## plots Date against Global relative power
plot(plot_days$Date, plot_days$Global_reactive_power, type = "l", lty = "solid", main = "", 
     xlab = "datetime", ylab = "Global_reactive_power", col="black")

dev.off()
}