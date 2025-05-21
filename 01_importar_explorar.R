


base <- read.csv("dataset.csv", sep=",")
View(base)

summary(base)
dim(base)

mean(base$edad)
mean(base$promedio,na.rm=TRUE)
mean(base$creditos_aprobados,na.rm=TRUE)

