#loading net report data from 2003-2014
#WILL NEED TO BE CHANGED DEPENDING ON .csv LOCATION
USA_NetTotals <- read.csv("./USA_NetTotals.csv")

#Year - year of emissions
#Reported - year reported
#CO2_LU - CO2 (carbon dioxide) emissions including LULUCF (land use, land use change, forestry)
#CO2 - CO2 emissions excluding LULUCF
#CH4_LU - CH4 (methane) emissions including LULUCF
#CH4 - CH4 emissions excluding LULUCF
#N2O_LU - N2O (nitrous oxide) emissions including LULUCF
#N2O - N2O emissions excluding LULUCF
#HFCs - HFC (hydrofluorocarbons) emissions
#PFCs - PFC (perfluorocarbons) emissions
#SF6 - SF6 (sulfur hexafluoride) emissions
#Total_LU - net emissions including LULUCF
#Total - net emissions excluding LULUCF
#ALL UNITS CO2 EQUIVALENT Gg
names(USA_NetTotals)
summary(USA_NetTotals)

#basic plot of net CO2 vs year vs year reported
plot(USA_NetTotals$Year, USA_NetTotals$CO2_LU, 
     col = USA_NetTotals$Reported,
     xlab = "Year of Emissions",
     ylab = "Net Total CO2",
     main = "Changes in Historical Emission Reports",
     pch = 19)

#splitting Report years into seperate data frames
lapply(split(USA_NetTotals, USA_NetTotals$Reported), 
       function(USA_Reported) { assign(paste0("USA_Reported", 
                                USA_Reported$Reported[1]), 
                                USA_Reported, pos= .GlobalEnv) })

#adding lines to plot
lines(USA_Reported2003$Year, USA_Reported2003$CO2_LU, col = 2003)
lines(USA_Reported2004$Year, USA_Reported2004$CO2_LU, col = 2004)
lines(USA_Reported2005$Year, USA_Reported2005$CO2_LU, col = 2005)
lines(USA_Reported2006$Year, USA_Reported2006$CO2_LU, col = 2006)
lines(USA_Reported2007$Year, USA_Reported2007$CO2_LU, col = 2007)
lines(USA_Reported2008$Year, USA_Reported2008$CO2_LU, col = 2008)
lines(USA_Reported2009$Year, USA_Reported2009$CO2_LU, col = 2009)
lines(USA_Reported2010$Year, USA_Reported2010$CO2_LU, col = 2010)
lines(USA_Reported2011$Year, USA_Reported2011$CO2_LU, col = 2011)
lines(USA_Reported2012$Year, USA_Reported2012$CO2_LU, col = 2012)
lines(USA_Reported2013$Year, USA_Reported2013$CO2_LU, col = 2013)
lines(USA_Reported2014$Year, USA_Reported2014$CO2_LU, col = 2014)

#mapping change in one variable (CO2_LU) over time graphically
#plot of change in 1990 CO2_LU numbers vs year reported
USA_Year1990 <- subset(USA_NetTotals, Year == 1990)
plot(unique(USA_NetTotals$Reported), USA_Year1990$CO2_LU,
     main = "Change in Reported 1990 Net CO2 Emissions",
     ylab = "CO2 Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue")

