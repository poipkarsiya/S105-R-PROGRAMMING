# Practical 7: One-Way ANOVA
print("Siya Poipkar S105")

mall_data <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Mall_Customers.csv")

str(mall_data)

colnames(mall_data) <- c(
  "CustomerID", "Gender", "Age", "AnnualIncome", "SpendingScore"
)

mall_data$AnnualIncome <- as.numeric(mall_data$AnnualIncome)

summary(mall_data$AnnualIncome)

mall_data$Income_Group <- cut(
  mall_data$AnnualIncome,
  breaks = c(15, 40, 70, 137),
  labels = c("Low", "Medium", "High"),
  include.lowest = TRUE
)

mall_data$Income_Group <- droplevels(mall_data$Income_Group)

table(mall_data$Income_Group)

anova_one <- aov(SpendingScore ~ Income_Group, data = mall_data)

summary(anova_one)
