library(ggplot2)
print("Siya Poipkar S105")
weather <- read.csv("C:/Users/DELL/Desktop/siya/DATASET/Weather.csv")
names(weather)

ggplot(weather, aes(x = Temp3pm)) +
  geom_histogram(binwidth = 2, fill = "blue") +
  labs(
    title = "Histogram of Temperature at 3 PM",
    x = "Temperature (Temp3pm)",
    y = "Frequency"
  )

ggplot(weather, aes(y = Temp3pm)) +
  geom_boxplot(fill = "green") +
  labs(
    title = "Box Plot of Temperature at 3 PM",
    y = "Temperature (Temp3pm)"
  )
