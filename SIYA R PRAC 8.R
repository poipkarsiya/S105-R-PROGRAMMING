install.packages("tidyr")
library(dplyr)
library(tidyr)
retail_df <- read.csv("C:/Users/itlab/OneDrive/Documents/S105/Retail Product - Retail Product.csv", na.strings = c("", "NA"))
print("--- 1. Original Data (First 6 Rows) ---")
print(head(retail_df))
print("--- Count of Missing Values per Column ---")
print(colSums(is.na(retail_df)))
clean_omit <- na.omit(retail_df)
print("--- 2. Data after na.omit() ---")
print(paste("Original rows:", nrow(retail_df)))
print(paste("Rows remaining:", nrow(clean_omit)))
print(head(clean_omit))
retail_df$Price <- as.numeric(retail_df$Price)
avg_price <- mean(retail_df$Price, na.rm = TRUE)
clean_replace <- retail_df %>%
  replace_na(list(
    Category = "Unknown",
    Discount = 0,
    Stock = "Check Warehouse",
    Price = avg_price
  ))
cat("\n--- 3. Data after replace_na() ---\n")
print(clean_replace[3, ]) 
print(head(clean_replace))
cat("\n--- Remaining NAs after Replacement ---\n")
print(colSums(is.na(clean_replace)))      
