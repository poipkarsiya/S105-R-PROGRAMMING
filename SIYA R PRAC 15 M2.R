print("Siya Poipkar S105")

install.packages("writexl")
library(writexl)

salary_data <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Salary_Data.csv")

linear_model <- lm(Salary ~ YearsExperience, data = salary_data)

salary_data$Predicted_Salary <- predict(linear_model, salary_data)

write.csv(salary_data,
          "C:/Users/DELL/Desktop/siya/Salary_with_predictions.csv",
          row.names = FALSE)

write_xlsx(salary_data,
           "C:/Users/DELL/Desktop/siya/Salary_with_predictions.xlsx")

pdf("C:/Users/DELL/Desktop/siya/Salary_Regression_Plot.pdf")

plot(salary_data$YearsExperience,
     salary_data$Salary,
     main = "Linear Regression: Salary vs Years of Experience",
     xlab = "Years of Experience",
     ylab = "Salary",
     pch = 16,
     col = "blue")

abline(linear_model, col = "green", lwd = 3)

dev.off()

print("Siya Poipkar S105")

diabetes_data <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/diabetes-data.csv")

str(diabetes_data)
names(diabetes_data)

logistic_model <- glm(Outcome ~ Glucose,
                      family = binomial,
                      data = diabetes_data)

summary(logistic_model)

diabetes_data$Predicted_Prob <- predict(logistic_model,
                                        diabetes_data,
                                        type = "response")

write.csv(diabetes_data,
          "C:/Users/DELL/Desktop/siya/Diabetes_with_predictions.csv",
          row.names = FALSE)

write_xlsx(diabetes_data,
           "C:/Users/DELL/Desktop/siya/Diabetes_with_predictions.xlsx")

x_values <- seq(min(diabetes_data$Glucose),
                max(diabetes_data$Glucose),
                length.out = 100)

y_values <- predict(logistic_model,
                    newdata = data.frame(Glucose = x_values),
                    type = "response")

pdf("C:/Users/DELL/Desktop/siya/Diabetes_Logistic_Regression_Plot.pdf")

plot(diabetes_data$Glucose,
     diabetes_data$Outcome,
     xlab = "Glucose Level",
     ylab = "Diabetes Outcome (0 = No, 1 = Yes)",
     main = "Logistic Regression: Glucose vs Diabetes",
     pch = 16,
     col = "blue")

lines(x_values, y_values, col = "purple", lwd = 3)

abline(h = 0.5, col = "red", lty = 2)

dev.off()

