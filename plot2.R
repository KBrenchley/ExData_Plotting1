## plot2.R

## Plots Global Active Power in kilowatts over time
## of the individual household electric power consumption data set 
## for the dates 2/1/07 - 2/2/07

## begin plotting

png(filename = "plot2.png", width = 480, height = 480, units = "px")

plot(plot_days$Date, plot_days$Global_active_power, type = "l", lty = "solid", main = "", xlab = "",
     ylab = "Global Active Power (kilowatts)", col="black")

dev.off()