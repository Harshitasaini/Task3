
# The Sparks Foundation - Internship#
Data Science and Business Analytics 

# Task - 1 Prediction Using Supervised ML #
Predict the percentage of an student based on the no. of study hours

Data can be found at:- http://bit.ly/w-data 

# Author--> Harshita Saini



# Import Excel data file into R #
library(readxl)
data <- read_excel("C:/Users/LENOVO/Downloads/data.xlsx")

# Plot a scatterplot for the data #
plot(data$Hours, data$Scores)

# Use lm function for regression, to get Intercept and Slope of the data #
lm(data$Scores~data$Hours)

# Add a linear regression line in the Scatterplot #
abline(a=2.484, b=9.776, col="Blue", lwd=2)

# Create a model for regression #
model<- lm(data$Scores~data$Hours)

# View summary of the dataset #
summary(model)

# Add residual values in data #
model$residuals
data$residuals<- model$residuals

# Add prediction values in data #
data$predicted<- model$fitted.values


# Plot a Scatterplot between the actual score and predicted  score #
barplot(data$Scores, col = "blue")
barplot(data$predicted, col = "red")

# Predict score if a student studies for 9.25 hrs/day #
predict(model, Hours=9.25)

model$coefficients
# Equation od line is y = intercept+slop*x 
y=2.483673+9.775803*9.25
y

# Thus, if a student studies for 9.25 hrs/day will get approximatly 93% marks #

Thank you

