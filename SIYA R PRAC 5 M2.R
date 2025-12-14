# Practical 5

df <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Cleaned_Car_Price_Prediction.csv")
print("Siya S105")
colnames(df)
df$Price_Group <- ifelse(df$price > median(df$price), "High", "Low")

print("--- Independent Two-Sample t-Test ---")

t_test_two <- t.test(price ~ Price_Group, data = df)

print(t_test_two)
