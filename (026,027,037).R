getwd()
setwd("E:/kelompok")
dataset <- read.csv("data_student.csv", sep = ";")
install.packages("C50")
install.packages("printr")
library(C50)
library(printr)
model<- C5.0(UNS ~., data=dataset)
model
summary(model)
plot(model)
datatesting <- dataset[,1:5]
predictions <- predict(model, datatesting)
table(predictions, dataset$UNS)
