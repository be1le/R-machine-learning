dataset = read.csv('Salary_Data.csv')

library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
trainig_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

regressor = lm(formula = Salary ~ YearsExperience,
               data = trainig_set)

y_pred = predict(regressor, newdata = test_set)

install.packages('ggplot2')

library(ggplot2)