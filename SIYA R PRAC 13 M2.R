print ("Siya Poipkar S105")
emp_data <- read.csv("~/S105/DATASET/Employee.csv")

linear_model <- lm(PaymentTier ~ ExperienceInCurrentDomain, data = emp_data)

plot(emp_data$ExperienceInCurrentDomain,
     emp_data$PaymentTier,
     main = "Linear Regression: Experience vs Payment Tier",
     xlab = "Experience in Current Domain (Years)",
     ylab = "Payment Tier",
     pch = 16)

abline(linear_model, col = "green", lwd = 3)

