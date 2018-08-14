
dataset = read.csv('50_Startups.csv')

#Encoding categorical data
dataset$state = factor(dataset$state, levels = c('New york', 'California', 'Florida'), labels = c(1, 2, 3))

#Splitting dataset into Training and Test dateset
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split ==TRUE)
test_set = subset(dataset, split == FALSE)

#Fitting Linear Regression
lin_reg = lm(formula = Profit~., data = training_set)

#Fitting Ploynomial Regression

#dataset$Label2 = dataset$Label^2
#Poly_reg = lm(formula = Salary~., data = dataset)

