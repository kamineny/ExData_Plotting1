## This R file is for loading data related to 2 days (2007-02-01 and 2007-02-02) from the large dataset.

fname = "./data/household_power_consumption.txt"

data = read.table(fname,header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)),na = "?")

## Amount of Memory needed for loading this data
dim(data) 
attach(data)

## Subsetting data of 2 days (2007-02-01 and 2007-02-02).
subset <- Date == "1/2/2007" | Date == "2/2/2007"
subset_data = data[subset, ]
attach(subset_data)

x <- paste(Date, Time)
subset_data$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(subset_data) <- 1:nrow(subset_data)
dim(subset_data)
attach(subset_data)