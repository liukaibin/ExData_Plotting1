##  Exploratory Data Analysis Learning On Coursera
##  Programming Assignment 1: plot2
##  
##  coded by Kaibin Liu in Nanjing, China, at 4th Jun, 2015
##
##  Function: plot2 <- function() 
##  Arguments:
##  Return:         
##

plot2 <- function() {
    
    ## loading the data...
    data <- read.csv("household_power_consumption.txt", sep=";", colClasses="character")
    
    ## fetch the selected data from "1/2/2007" to "2/2/2007"
    sdata <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
    
    ## making plots and save in png file. 
    png(filename = "plot2.png", width=480, height=480)
    plot(sdata$Global_active_power, type="l", xaxt="n", ylab = "Global Active Power (kilovwatts)", xlab="")
    axis(1, at = c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
    
    dev.off()    
}

