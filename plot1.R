##  Exploratory Data Analysis Learning On Coursera
##  Programming Assignment 1: plot1
##  
##  coded by Kaibin Liu in Nanjing, China, at 4th Jun, 2015
##
##  Function: plot1 <- function() 
##  Arguments:
##  Return:         
##

plot1 <- function() {
    
    ## loading the data...
    data <- read.csv("household_power_consumption.txt", sep=";", colClasses="character")
    
    ## fetch the selected data from "1/2/2007" to "2/2/2007"
    sdata <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
    sdata[,3] <- as.numeric(sdata[,3])
    
    ## making plots and save in png file. 
    png(filename = "plot1.png", width=480, height=480)
    hist(sdata$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilovwatts)")
    dev.off()    
}

