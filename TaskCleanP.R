Pclean <- read.csv("P.csv")
View(Pclean)

Pclean$PH[Pclean$PH %in% c("No")]="N"
Pclean$PH[Pclean$PH %in% c("Yes")]="Y"




