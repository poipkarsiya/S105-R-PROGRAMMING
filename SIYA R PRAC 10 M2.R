library(ggplot2)
print("Siya Poipkar S105")
disease <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Cardiovascular_Disease_Dataset.csv")
names(disease)

ggplot(disease, aes(x = as.factor(target))) +
  geom_bar(fill = "pink") +
  labs(
    title = "Distribution of Cardiovascular Disease",
    x = "Disease Status (0 = No Disease, 1 = Disease)",
    y = "Number of Patients"
  )