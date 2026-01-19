print("Siya Poipkar S105")

install.packages("writexl")
library(writexl)

emp_data <- read.csv("~/S105/DATASET/Employee.csv")

linear_model <- lm(PaymentTier ~ ExperienceInCurrentDomain, data = emp_data)

emp_data$Predicted_PaymentTier <- predict(linear_model, emp_data)

write.csv(emp_data, "C:/Users/itlab/Downloads/Employee_with_predictions.csv", row.names = FALSE)

write_xlsx(emp_data, "C:/Users/itlab/Downloads/Employee_with_predictions.xlsx")

pdf("C:/Users/itlab/Downloads/Employee_Regression_Plot.pdf")

plot(emp_data$ExperienceInCurrentDomain,
     emp_data$PaymentTier,
     main = "Linear Regression: Experience vs Payment Tier",
     xlab = "Experience in Current Domain (Years)",
     ylab = "Payment Tier",
     pch = 16,
     col = "blue")
abline(linear_model, col = "green", lwd = 3)

dev.off()

print("Siya Poipkar S105")

diabetes_data <- read.csv("~/S105/DATASET/diabetes.csv")

str(diabetes_data)
names(diabetes_data)
logistic_model <- glm(Outcome ~ Glucose,
                      family = binomial,
                      data = diabetes_data)

summary(logistic_model)

diabetes_data$Predicted_Prob <- predict(logistic_model,
                                        diabetes_data,
                                        type = "response")

write.csv(diabetes_data, "C:/Users/itlab/Downloads/Diabetes_with_predictions.csv",
          row.names = FALSE)

write_xlsx(diabetes_data, "C:/Users/itlab/Downloads/Diabetes_with_predictions.xlsx")

x_values <- seq(min(diabetes_data$Glucose),
                max(diabetes_data$Glucose),
                length.out = 100)

y_values <- predict(logistic_model,
                    newdata = data.frame(Glucose = x_values),
                    type = "response")

pdf("C:/Users/itlab/Downloads/Diabetes_Logistic_Regression_Plot.pdf")

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

