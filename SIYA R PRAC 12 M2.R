print("Siya Poipkar S105")

mall <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Mall_Customers.csv")

mall_numeric <- mall[, c("Age", "Annual.Income..k..", "Spending.Score..1.100.")]

cor_matrix <- cor(mall_numeric)

print(cor_matrix)

install.packages("corrplot")  
library(corrplot)

corrplot(cor_matrix,
         method = "color",
         type = "upper",
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 45,
         title = "Correlation Matrix of Mall Customers",
         mar = c(0,0,2,0))
