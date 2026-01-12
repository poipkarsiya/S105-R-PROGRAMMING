library(ggplot2)
library(dplyr)
print("Siya Poipkar S105")
data <- read.csv("~/S105/DATASET/Cardiovascular_Disease_Dataset.csv")
names(data)

# 1. Scatter Plot
# Age vs Serum Cholesterol
ggplot(data, aes(x = age, y = serumcholestrol)) +
  geom_point(color = "pink") +
  labs(
    title = "Scatter Plot of Age vs Serum Cholesterol",
    x = "Age",
    y = "Serum Cholesterol"
  ) +
  theme_minimal()

# 2. Pie Chart
# Gender Distribution
gender_data <- data %>%
  count(gender)

ggplot(gender_data, aes(x = "", y = n, fill = factor(gender))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(
    title = "Gender Distribution",
    fill = "Gender"
  ) +
  theme_void()

# 3. High–Low Chart
# Heart Rate Range by Age
hl_data <- data %>%
  group_by(age) %>%
  summarise(
    min_hr = min(maxheartrate),
    max_hr = max(maxheartrate)
  )

ggplot(hl_data, aes(x = age)) +
  geom_linerange(aes(ymin = min_hr, ymax = max_hr), color = "purple") +
  labs(
    title = "High-Low Chart of Heart Rate by Age",
    x = "Age",
    y = "Heart Rate"
  ) +
  theme_minimal()