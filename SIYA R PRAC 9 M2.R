# Practical 9: Chi-Square Test
print("Siya Poipkar S105")
heart_data <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Cardiovascular_Disease_Dataset.csv")

str(heart_data)

colnames(heart_data) <- gsub(" ", "_", colnames(heart_data))

heart_data$gender <- as.factor(heart_data$gender)
heart_data$target <- as.factor(heart_data$target)

heart_data$gender <- droplevels(heart_data$gender)
heart_data$target <- droplevels(heart_data$target)

cont_table <- table(heart_data$gender, heart_data$target)

cont_table

chi_result <- chisq.test(cont_table)

chi_result
