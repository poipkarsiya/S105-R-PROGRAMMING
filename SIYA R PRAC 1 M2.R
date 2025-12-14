# Practical 1

install.packages("psych")
library(psych)
print("Siya S105")
df <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/College_Marks_Dataset.csv")

print("--- Descriptive Statistics using summary() ---")
summary(df)

print("--- Detailed Descriptive Statistics using describe() ---")
describe(df)
