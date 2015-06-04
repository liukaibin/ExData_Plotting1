##  Exploratory Data Analysis Learning On Coursera
##  Programming Assignment 1: plot3
##  
##  coded by Kaibin Liu in Nanjing, China, at 4th Jun, 2015
##
##  Function: plot3 <- function() 
##  Arguments:
##  Return:         
##

plot3 <- function() {
    
    ## loading the data...
    data <- read.csv("household_power_consumption.txt", sep=";", colClasses="character")
    
    ## fetch the selected data from "1/2/2007" to "2/2/2007"
    sdata <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
    
    ## making plots and save in png file. 
    png(filename = "plot3.png", width=480, height=480)
    with(sdata, plot(Sub_metering_1, xlab="", ylab="Energy sub metering", type="n", xaxt="n"))
    with(sdata, lines(Sub_metering_1, col="black", xaxt="n"))
    with(sdata, lines(Sub_metering_2, col="red", xaxt="n"))
    with(sdata, lines(Sub_metering_3, col="blue", xaxt="n"))
    axis(1, at = c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
    legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    dev.off()    
}

