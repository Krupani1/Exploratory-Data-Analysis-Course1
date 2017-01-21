# Exploratory Data Analysis - Assignment 2 ,Q3


# Loading provided datasets from local machine

NEI <- readRDS("summarySCC_PM25.rds")

# Subset NEI data by Baltimore's fip.
baltimoreNEI <- NEI[NEI$fips=="24510",]


png("plot3.png",width=480,height=480,units="px",bg="transparent")
#Setup ggplot with data frame and add layers
g <- ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
 geom_bar(stat="identity") +
        theme_bw() + guides(fill=FALSE)+
        facet_grid(.~type,scales = "free",space="free") + 
        labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
        labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))
print(g)
dev.off()