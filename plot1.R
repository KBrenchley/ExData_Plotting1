plot1 <- function() {

## plot1.R

## Plots a histogram of the Global Active Power in kilowatts of the individual
## household electric power consumption data set for the dates 2/1/07 - 2/2/07

## begin plotting

png(filename = "plot1.png", width = 480, height = 480, units = "px")

hist(plot_days$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", col="Red")

dev.off()
}