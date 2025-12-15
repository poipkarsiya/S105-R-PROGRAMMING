marks_df <- read.csv("C:/Users/itlab/OneDrive/Documents/S105/DATASET/College_Marks_Dataset.csv")

print("--- Dataset Successfully Loaded ---")
print(head(marks_df))  

print("--- OUTPUT OF str() ---")
str(marks_df)

print("--- OUTPUT OF summary() ---")
summary(marks_df)

marks_df[sapply(marks_df, is.character)] <- 
  lapply(marks_df[sapply(marks_df, is.character)], as.factor)

print("--- OUTPUT OF summary() AFTER FACTOR CONVERSION ---")
summary(marks_df)

if("Marks" %in% colnames(marks_df)){
  avg_marks <- mean(marks_df$Marks, na.rm = TRUE)
  max_marks <- max(marks_df$Marks, na.rm = TRUE)
  min_marks <- min(marks_df$Marks, na.rm = TRUE)
  
  print(paste("Average Marks:", avg_marks))
  print(paste("Highest Marks:", max_marks))
  print(paste("Lowest Marks:", min_marks))
}

print("--- Practical Completed Successfully ---")
