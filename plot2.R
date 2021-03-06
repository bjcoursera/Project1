mydata <-read.table("C:...\\household_power_consumption.txt", header = T, sep =";")
mydata2 <-mydata
mydata2$Date <-as.Date(mydata2$Date, "%d/%m/%Y")
mydata2$Time <- format(mydata2$Time, format='%H:%M:%S')
datemin <-as.Date("01/02/2007", "%d/%m/%Y")
datemax <-as.Date("02/02/2007", "%d/%m/%Y")
mydata2 <-subset(mydata2, mydata2$Date >=datemin)
mydata2 <-subset(mydata2, mydata2$Date <=datemax)
mydata3 <- mydata2
mydata3$Date <-as.POSIXct(paste(mydata3$Date, mydata3$Time), format="%Y-%m-%d %H:%M:%S")
mydata3$Global_active_power <-as.numeric(levels(mydata3$Global_active_power)[mydata3$Global_active_power])
mydata3$Global_reactive_power <-as.numeric(levels(mydata3$Global_reactive_power)[mydata3$Global_reactive_power])
mydata3$Voltage <-as.numeric(levels(mydata3$Voltage)[mydata3$Voltage])
mydata3$Global_intensity <-as.numeric(levels(mydata3$Global_intensity)[mydata3$Global_intensity])
mydata3$Sub_metering_1 <-as.numeric(levels(mydata3$Sub_metering_1)[mydata3$Sub_metering_1])
mydata3$Sub_metering_2 <-as.numeric(levels(mydata3$Sub_metering_2)[mydata3$Sub_metering_2])
mydata3$Sub_metering_3 <-as.numeric(levelsr(mydata3$Sub_metering_3)[mydata3$Sub_metering_3])
mydata3[1:7,]
mydata2[1:7,]
plot(mydata3$Date, mydata3$Global_active_power, type="l", xlab="", ylab ="Global active power (kilowatts)", main = "")


