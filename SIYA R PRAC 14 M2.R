print ("Siya Poipkar S105")
diabetes_data <- read.csv("~/S105/DATASET/diabetes.csv")
str(diabetes_data)
names(diabetes_data)
logistic_model <- glm(Outcome ~ Glucose,
                      family = binomial,
                      data = diabetes_data)

summary(logistic_model)

plot(diabetes_data$Glucose,
     diabetes_data$Outcome,
     xlab = "Glucose Level",
     ylab = "Diabetes Outcome (0 = No, 1 = Yes)",
     main = "Logistic Regression: Glucose vs Diabetes",
     pch = 16)

x_values <- seq(min(diabetes_data$Glucose),
                max(diabetes_data$Glucose),
                length.out = 100)

y_values <- predict(logistic_model,
                    newdata = data.frame(Glucose = x_values),
                    type = "response")

lines(x_values, y_values, col = "purple", lwd = 3)

