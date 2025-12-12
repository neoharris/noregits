
Hclean <- read.csv("TaskData.csv")

str(Hclean)

Hclean <- Hclean[,c("Age", "Gender", "Smoker", "Physical", "Mental", "Belief")]

Hclean$Region <- c("H", "H", "H", "H", "H", "H", "H", "H", "H", "H", "H", "H","H", "H", "H", "H", "H", "H")

Hclean$SES5 <- c("", "", "", "", "", "", "", "", "", "", "", "","", "", "", "", "", "")