
PracA <- read.csv("Q1_data.csv")

str(PracA)

table(PracA$Sex)

PracA <- subset(PracA, Sex != "")
table(PracA$Sex)

PracA$Sex [PracA$Sex %in% c("f", "female")]="F" 
table(PracA$Sex)