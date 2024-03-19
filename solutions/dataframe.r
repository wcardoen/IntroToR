# Loading the air quality data
air <- airquality
# Column headers
cat(sprintf("Column headers:\n"))
names(air)

# first 5 lines
head(air, n=5)
# last 2 lines
tail(air, n=2)

# How many Ozone entries are missing?
ozonMissing <- sum(is.na(air$Ozone))
cat(sprintf("\n#Entries missing:%d\n\n", ozonMissing))

# Day & month where Max.Temp happens
maxTemp <- max(air$Temp)
indRow <- which(air$Temp == maxTemp)
cat(sprintf("Max. Temp:%d @ %02d/%02d\n\n", air$Temp[indRow], 
	    air$Month[indRow], air$Day[indRow]))

# av./sd.(Ozone) when Temp >= 80
indTemp <- which(air$Temp >= 80)
avOz <- mean(air$Temp[indTemp], na.rm=T)
sdOz <- sd(air$Temp[indTemp], na.rm=T)
cat(sprintf("Av.(Oz):%8.4f  sd(OZ):%8.4f (when T>=80)\n\n", avOz, sdOz))

# How many days have a Solar.R between 150 and 250?
indSolar <- ((air$Solar.R>150) & (air$Solar.R <250) & (!is.na(air$Solar.R)) )
ndays <- sum(indSolar)
cat(sprintf("#Days where 150< Solar.R<250:%d\n", ndays))
