Pclean <- read.csv("P.csv")
Aclean = read.csv("A.csv")
Hclean <- read.csv("TaskData.csv")

Hclean$Region <- c("H", "H", "H", "H", "H", "H", "H", "H", "H", "H", "H", "H","H", "H", "H", "H", "H", "H")

Hclean$SES5 <- c("", "", "", "", "", "", "", "", "", "", "", "","", "", "", "", "", "")
Hclean$PH <- Hclean$Physical
Hclean$MH <-Hclean$Mental
Hclean <- Hclean[,c("Age", "Gender", "Smoker", "PH", "MH", "Belief", "SES5", "Region")]

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
total

total$PH = ifelse(total$PH=="Y", 1,0)
total$MH = ifelse(total$MH=="Y", 1,0)
total$HI = total$PH + total$MH
total$HI = ifelse(total$HI==0, 1,0)
total$HI= as.factor(total$HI)

colnames(total)
binreg = glm(HI ~ Belief, data = total, family=binomial(link="logit"))
summary(binreg)
