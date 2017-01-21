# Exploratory Data Analysis - Assignment 2 ,Q1


# Loading provided datasets from local machine

NEI <- readRDS("summarySCC_PM25.rds")

# Aggregate the sum of Emissions per year
sumdata <- with(NEI, aggregate(Emissions, by = list(year), sum))
# tapply(NEI$Emissions, NEI$year, sum)

png(filename='plot21.png')

plot(sumdata, type = "o", main = "Total PM2.5 Emissions", xlab = "Year", ylab = "PM2.5 Emissions", pch = 19, col = "darkblue", lty = 6)

dev.off()
