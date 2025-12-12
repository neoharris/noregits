Pclean <- read.csv("P.csv")
Aclean = read.csv("A.csv")
Hclean <- read.csv("TaskData.csv")

Hclean <- Hclean[,c("Age", "Gender", "Smoker", "PH", "MH", "Belief", "SES5")]

Hclean$Region <- c("H", "H", "H", "H", "H", "H", "H", "H", "H", "H", "H", "H","H", "H", "H", "H", "H", "H")

Hclean$SES5 <- c("", "", "", "", "", "", "", "", "", "", "", "","", "", "", "", "", "")
Hclean$PH <- Hclean$Physical
Hclean$MH <-Hclean$Mental
View(Hclean)

Bclean <-read.csv("B.csv")

View(Pclean)
View(Aclean)
View(Bclean)
View(Hclean)


#Change all No values to N, Yes values to Y 
Pclean$PH[Pclean$PH %in% c("No")]="N"
Pclean$PH[Pclean$PH %in% c("Yes")]="Y"

#Combining data 

total <- rbind(Hclean, Pclean, Aclean)
View(total)




