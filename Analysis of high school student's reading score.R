
setwd("~/Desktop")
x <- read.csv(file.choose() , header = T)


#Main and interaction effects after running ANOVA Model
fit <- aov(read ~ as.factor(prog) 
           + as.factor(female) 
           + as.factor(prog) :as.factor(female) , data=x)
summary(fit) 


#Tukey
TukeyHSD(fit)