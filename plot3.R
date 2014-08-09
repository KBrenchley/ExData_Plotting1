## plot3.R

## Plots the thre Submetering variables over time
## of the individual household electric power consumption data set 
## for the dates 2/1/07 - 2/2/07

## begin plotting

png(filename = "plot3.png", width = 480, height = 480, units = "px")

plot(plot_days$Date, plot_days$Sub_metering_1, type = "l", lty = "solid",  col="black", 
     main = "", xlab = "", ylab = "Energy sub metering")

points(plot_days$Date, plot_days$Sub_metering_2, type = "l", lty = "solid", col = "red")
points(plot_days$Date, plot_days$Sub_metering_3, type = "l", lty = "solid", col = "blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = "solid", col = c("black", "red", "blue"))

dev.off()