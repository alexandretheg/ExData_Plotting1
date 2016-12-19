household_power_consumption<- read.csv("~/R/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

mydata<-subset(household_power_consumption, Date=="1/2/2007")
myotherdata<-subset(household_power_consumption, Date=="2/2/2007")
data<- rbind(mydata, myotherdata)

hist(data$Global_active_power, col="Red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.copy(png, file="plot1.png")
dev.off()