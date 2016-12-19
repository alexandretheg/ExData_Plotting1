household_power_consumption<- read.csv("~/R/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

mydata<-subset(household_power_consumption, Date=="1/2/2007")
myotherdata<-subset(household_power_consumption, Date=="2/2/2007")
data<- rbind(mydata, myotherdata)

plot(data$Sub_metering_1, type="n", ylab="Energy Sub Metering", xaxt="n", xlab="")
points(data$Sub_metering_1, type="l")
points(data$Sub_metering_2, type="l", col="red")
points(data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), pch="_")
axis(1, at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))

dev.copy(png, file="plot3.png")
dev.off()