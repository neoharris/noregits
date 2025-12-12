data <- read.csv("Q1_data.csv")

View(data)

#Tabulate by sex
xtabs(~Sex, data)

data1 <- subset(data, Sex != "")
View(data1)

data1$Sex[data1$Sex %in% c("f", "female")]="F"
View(data1)
