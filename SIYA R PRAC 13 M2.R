print("Siya Poipkar S105")

library(writexl)

salary_data <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Salary_Data.csv")

linear_model <- lm(Salary ~ YearsExperience, data = salary_data)

salary_data$Predicted_Salary <- predict(linear_model, salary_data)

write.csv(salary_data, "C:/Users/DELL/Desktop/siya/Salary_with_predictions.csv", row.names = FALSE)
write_xlsx(salary_data, "C:/Users/DELL/Desktop/siya/Salary_with_predictions.xlsx")

plot(salary_data$YearsExperience,
     salary_data$Salary,
     main = "Linear Regression: Salary vs Years of Experience",
     xlab = "Years of Experience",
     ylab = "Salary",
     pch = 16)
abline(linear_model, col = "green", lwd = 3)

pdf("C:/Users/DELL/Desktop/siya/Salary_Regression_Plot.pdf")
plot(salary_data$YearsExperience, salary_data$Salary,
     main = "Linear Regression: Salary vs Years of Experience",
     xlab = "Years of Experience", ylab = "Salary", pch = 16)
abline(linear_model, col = "green", lwd = 3)
dev.off()
