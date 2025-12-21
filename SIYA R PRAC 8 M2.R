# Practical 8: Two-Way ANOVA
print("Siya Poipkar S105")
ai_data <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/AI_Impact_on_Jobs_2030.csv")

str(ai_data)

colnames(ai_data) <- gsub(" ", "_", colnames(ai_data))

ai_data$Average_Salary <- as.numeric(ai_data$Average_Salary)

ai_data$Education_Level <- as.factor(ai_data$Education_Level)
ai_data$Risk_Category <- as.factor(ai_data$Risk_Category)

ai_data$Education_Level <- droplevels(ai_data$Education_Level)
ai_data$Risk_Category <- droplevels(ai_data$Risk_Category)

table(ai_data$Education_Level)
table(ai_data$Risk_Category)

anova_two <- aov(Average_Salary ~ Education_Level * Risk_Category, data = ai_data)

summary(anova_two)
