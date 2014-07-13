## This file is for plotting Global Active Power for two day period 
## (2007-02-01 and 2007-02-02)

source("load_data.R")

png(filename = "./plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()