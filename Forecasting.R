install.packages("fpp2")
library(fpp2)
library(ggplot2)
library(forecast)

data = read.csv(file.choose())
data$date = NULL

for (i in 1:length(data)){
 data[i] = as.numeric(data[i]) 
}

as.integer(data)
testdata = read.csv(file.choose())
testdata$date = NULL

str(testdata)
str(data)
model1 = lm(close~., data = data)
summary(model1)
predictvalue = predict(model1, newdata = testdata)
