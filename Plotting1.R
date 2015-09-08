household_power_consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
household_power_consumption$DateTime <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), "%d/%m/%Y %H:%M:%S", tz = "UTC")
two_day_subset <- subset(household_power_consumption, household_power_consumption$DateTime >= "2007-02-01" & household_power_consumption$DateTime <= "2007-02-02")
rm(household_power_consumption)