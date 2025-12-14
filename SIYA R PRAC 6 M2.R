# Practical 6: Paired t-Test

df <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Cleaned_BMW_Sales_Data.csv")
print("Siya S105")
colnames(df)
print("--- Paired t-Test ---")

df$previous_year_sales <- df$sales_volume - runif(
  nrow(df),
  min = 50,
  max = 200
)

t_test_paired <- t.test(
  df$sales_volume,
  df$previous_year_sales,
  paired = TRUE
)

print(t_test_paired)
