# Practical 4

df <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Cardiovascular_Disease_Dataset.csv")
print("Siya S105")
colnames(df)

print("--- One Sample t-Test ---")
t_test_one <- t.test(df$age, mu = 50)
print(t_test_one)
