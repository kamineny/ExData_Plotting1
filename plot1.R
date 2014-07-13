## This file is for plotting Global Active Power for two day period 
## (2007-02-01 and 2007-02-02)

source("./load_data.R")

png(filename = "./plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

dev.off()