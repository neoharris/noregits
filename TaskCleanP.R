library(ggplot2)

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


#Secondary analysis: assess the prevalence of health issues in the cohort 
table1<- xtabs(~MH, total) #Prevalence of MH 
table2 <- xtabs(~PH, total) #Prevalence of PH 
print(table1) 
print(table2)

#Adjust for other factors
smoking <- xtabs(~MH+Smoker, total)
p_smoking <- prop.table(smoking)
print(p_smoking)









