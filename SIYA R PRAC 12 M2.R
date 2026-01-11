print("Siya Poipkar S105")
mall <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Mall_Customers.csv")

mall_numeric <- mall[, c("Age", "Annual.Income..k..", "Spending.Score..1.100.")]

cor_matrix <- cor(mall_numeric)

print(cor_matrix)