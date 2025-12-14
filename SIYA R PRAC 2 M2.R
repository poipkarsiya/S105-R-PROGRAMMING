# Practical 2

install.packages("dplyr")
library(dplyr)
print("Siya S105")
df <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/sales_data.csv")
colnames(df)

print("--- Frequency Table using table() ---")
category_counts <- table(df$Product_Category)
print(category_counts)

print("--- Frequency Table using count() ---")
category_df <- df %>% count(Product_Category)
print(category_df)
