#Created By: Gita Kartika Suriah

data<-Analysis_Regression_Project_Model_Selection_Dataset
#Scatterplot data
chart.Correlation(data)

#Structured Featured Selection
#Create model 
attach(data)

#Create linear model
model1<-lm(Length~Age)
summary(model1)

#Creat quadratic model
model2<-lm(Length~Age+I(Age^2))
summary(model2)

#Assumption Check
#Multicolinieritas test
vif(model2)

#Correlation test
dwtest(model2)

#Residual plot
par(mfrow=c(2,2))
plot(model2)

#Normality test
shapiro.test(model2$residuals)