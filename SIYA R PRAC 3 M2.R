# Practical 3

df <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/AI_Impact_on_Jobs_2030.csv")
print("Siya S105")
print("--- Cross Tabulation (Job Title vs Risk Category) ---")

cross_tab <- table(df$Job_Title, df$Risk_Category)

print(cross_tab)
