household_power_consumption<- read.csv("~/R/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

mydata<-subset(household_power_consumption, Date=="1/2/2007")
myotherdata<-subset(household_power_consumption, Date=="2/2/2007")
data<- rbind(mydata, myotherdata)

plot(data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))

dev.copy(png, file="plot2.png")
dev.off()