household_power_consumption<- read.csv("~/R/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

mydata<-subset(household_power_consumption, Date=="1/2/2007")
myotherdata<-subset(household_power_consumption, Date=="2/2/2007")
data<- rbind(mydata, myotherdata)

par(mfrow=c(2,2))

plot(data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))

plot(data$Voltage, type="l", ylab="Voltage", xlab="datetime", xaxt="n")
axis(1, at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))

plot(data$Sub_metering_1, type="n", ylab="Energy Sub Metering", xaxt="n", xlab="")
points(data$Sub_metering_1, type="l")
points(data$Sub_metering_2, type="l", col="red")
points(data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), pch="_")
axis(1, at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))

plot(data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime", xaxt="n")
axis(1, at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))

dev.copy(png, file="plot4.png")
dev.off()