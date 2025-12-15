install.packages("lubridate")
library(lubridate)
library(dplyr)

movies_df <- data.frame(
  Movie_ID = 1:5,
  Release_Date = c("2020-09-04", "2021-12-17", "2022-05-06", "2023-07-21", "2024-11-08")
)

print("--- Original Dataset ---")
print(movies_df)

processed_movies <- movies_df %>%
  mutate(
    Actual_Date = ymd(Release_Date),     
    Year = year(Actual_Date),             
    Month_No = month(Actual_Date),        
    Month_Name = month(Actual_Date, label = TRUE, abbr = FALSE), 
    Day = day(Actual_Date),               
    Weekday_Name = wday(Actual_Date, label = TRUE, abbr = FALSE), 
    Quarter = quarter(Actual_Date),       
    Day_of_Year = yday(Actual_Date)       
  )

print("--- Movies with Extracted Date Components ---")
print(processed_movies)

current_time <- now()

print("--- System Date-Time Extraction ---")
print(paste("Current Year:", year(current_time)))
print(paste("Current Month:", month(current_time)))
print(paste("Current Day:", day(current_time)))
print(paste("Current Hour:", hour(current_time)))
print(paste("Current Minute:", minute(current_time)))
