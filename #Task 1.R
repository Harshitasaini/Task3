
# The Sparks Foundation - Internship#
Data Science and Business Analytics 

# Task - 1 Prediction Using Supervised ML #
Predict the percentage of a student based on the no. of study hours

Data can be found at:- http://bit.ly/w-data 

# Author--> Harshita Saini



# Import Excel data file into R #
library(readxl)
data <- read_excel("C:/Users/LENOVO/Downloads/data.xlsx")
head(data)

# Plot a Scatterplot for the data #
plot(Hours,Scores)

# Use lm function for regression, to get Intercept and Slope of the data #
lm(Scores~Hours)

# Add a linear regression line in the Scatterplot #
abline(a=2.484, b=9.776, col="Blue", lwd=2)

# Create a model for regression #
model<- lm(Scores~Hours)

# View summary of the dataset #
summary(model)

# Add prediction values in data #
data$predicted<- model$fitted.values

# Predict score if a student studies for 9.25 hrs/day #
predict(model, data.frame(Hours=9.25))

# Plot a Scatterplot between the actual score and predicted  score #
barplot(data$Scores, col = "blue")
barplot(data$predicted, col = "red")

# we can varify this predicted value by the equation of line #
# Equation of line is y = intercept+slop*x 
model$coefficients
y=2.483673+9.775803*9.25
y

# Thus, if a student studies for 9.25 hrs/day will get approximatly 93 marks #

Thank you

