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
#ALL UNITS CO2 EQUIVALENT Gg/Megaton/10^6 kg
names(USA_NetTotals)
summary(USA_NetTotals)

#basic plot of net CO2 vs year vs year reported #INCLUDE
plot(USA_NetTotals$Year, USA_NetTotals$Total_LU, 
     col = USA_NetTotals$Reported,
     xlab = "Year of Emissions",
     ylab = "Net Total Emissions",
     main = "Changes in Historical Emission Reports",
     pch = 19)

#splitting Report years into seperate data frames
#lapply(split(USA_NetTotals, USA_NetTotals$Reported), 
#       function(USA_Reported) { assign(paste0("USA_Reported", 
#                                USA_Reported$Reported[1]), 
#                                USA_Reported, pos= .GlobalEnv) })

#adding lines to plot
#lines(USA_Reported2003$Year, USA_Reported2003$CO2_LU, col = 2003)
#lines(USA_Reported2004$Year, USA_Reported2004$CO2_LU, col = 2004)
#lines(USA_Reported2005$Year, USA_Reported2005$CO2_LU, col = 2005)
#lines(USA_Reported2006$Year, USA_Reported2006$CO2_LU, col = 2006)
#lines(USA_Reported2007$Year, USA_Reported2007$CO2_LU, col = 2007)
#lines(USA_Reported2008$Year, USA_Reported2008$CO2_LU, col = 2008)
#lines(USA_Reported2009$Year, USA_Reported2009$CO2_LU, col = 2009)
#lines(USA_Reported2010$Year, USA_Reported2010$CO2_LU, col = 2010)
#lines(USA_Reported2011$Year, USA_Reported2011$CO2_LU, col = 2011)
#lines(USA_Reported2012$Year, USA_Reported2012$CO2_LU, col = 2012)
#lines(USA_Reported2013$Year, USA_Reported2013$CO2_LU, col = 2013)
#lines(USA_Reported2014$Year, USA_Reported2014$CO2_LU, col = 2014)

#plotting change in one variable (Total_LU) over time graphically #INCLUDE
USA_Year1990 <- subset(USA_NetTotals, Year == 1990)
USA_Year1995 <- subset(USA_NetTotals, Year == 1995)
USA_Year2000 <- subset(USA_NetTotals, Year == 2000)
plot(unique(USA_NetTotals$Reported), USA_Year1990$Total_LU,
     main = "Change in Reported Net Greenhouse Gas Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(2000000,7500000))
points(unique(USA_NetTotals$Reported), USA_Year1995$Total_LU,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$Total_LU,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in Total excluding LULUCF #INCLUDE
plot(unique(USA_NetTotals$Reported), USA_Year1990$Total,
     main = "Change in Reported Greenhouse Gas Emissions excluding LULUCF",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(2000000,7500000))
points(unique(USA_NetTotals$Reported), USA_Year1995$Total,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$Total,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)


#plotting change in net CO2 (CO2_LU) #INCLUDE
plot(unique(USA_NetTotals$Reported), USA_Year1990$CO2_LU,
     main = "Change in Reported Net CO2 Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(1000000,7000000))
points(unique(USA_NetTotals$Reported), USA_Year1995$CO2_LU,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$CO2_LU,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in CO2 #INCLUDE
plot(unique(USA_NetTotals$Reported), USA_Year1990$CO2,
     main = "Change in Reported Net CO2 Emissions excluding LULUCF",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(1000000,7000000))
points(unique(USA_NetTotals$Reported), USA_Year1995$CO2,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$CO2,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in net CH4 (CH4_LU) #INCLUDE
plot(unique(USA_NetTotals$Reported), USA_Year1990$CH4_LU,
     main = "Change in Reported Net CH4 Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(500000,700000))
points(unique(USA_NetTotals$Reported), USA_Year1995$CH4_LU,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$CH4_LU,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in CH4
plot(unique(USA_NetTotals$Reported), USA_Year1990$CH4,
     main = "Change in Reported CH4 Emissions excluding LULUCF",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(500000,700000))
points(unique(USA_NetTotals$Reported), USA_Year1995$CH4,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$CH4,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in net N2O (N2O_LU) #INCLUDE
plot(unique(USA_NetTotals$Reported), USA_Year1990$N2O_LU,
     main = "Change in Reported Net N2O Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(100000,700000))
points(unique(USA_NetTotals$Reported), USA_Year1995$N2O_LU,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$N2O_LU,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in N2O
plot(unique(USA_NetTotals$Reported), USA_Year1990$N2O,
     main = "Change in Reported N2O Emissions excluding LULUCF",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(100000,700000))
points(unique(USA_NetTotals$Reported), USA_Year1995$N2O,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$N2O,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in HFCs
plot(unique(USA_NetTotals$Reported), USA_Year1990$HFCs,
     main = "Change in Reported Net HFCs Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(1000,120000))
points(unique(USA_NetTotals$Reported), USA_Year1995$HFCs,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$HFCs,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in PFCs
plot(unique(USA_NetTotals$Reported), USA_Year1990$PFCs,
     main = "Change in Reported Net PFCs Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(0,25000))
points(unique(USA_NetTotals$Reported), USA_Year1995$PFCs,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$PFCs,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

#plotting change in SF6
plot(unique(USA_NetTotals$Reported), USA_Year1990$SF6,
     main = "Change in Reported Net SF6 Emissions",
     ylab = "Total Emissions",
     xlab = "Year of Reporting",
     pch = 19,
     col = "blue",
     ylim = c(1000,40000))
points(unique(USA_NetTotals$Reported), USA_Year1995$SF6,
       pch = 19,
       col = "red") #adding points for 1995
points(unique(USA_NetTotals$Reported), USA_Year2000$SF6,
       pch = 19,
       col = "purple") #adding points for 2000
legend("bottomleft", c("1990", "1995", "2000"),
       col = c("blue", "red", "purple"),
       pch = 19)

