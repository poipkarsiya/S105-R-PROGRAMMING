library(dplyr)

spotify <- read.csv("C:/Users/itlab/OneDrive/Documents/S105/DATASET/spotify_data clean.csv")
bmw <- read.csv("C:/Users/itlab/OneDrive/Documents/S105/DATASET/Cleaned_BMW_Sales_Data.csv")

print("--- Rows Before Cleaning ---")
print(paste("Spotify Rows:", nrow(spotify)))
print(paste("BMW Rows:", nrow(bmw)))

spotify_clean <- spotify[, c("track_name", "track_popularity")]
names(spotify_clean) <- c("Name", "Value")

bmw_clean <- bmw[, c("model", "price_usd")]
names(bmw_clean) <- c("Name", "Value")

spotify_clean$Value <- as.numeric(spotify_clean$Value)
bmw_clean$Value <- as.numeric(bmw_clean$Value)

combined_data <- rbind(spotify_clean, bmw_clean)

print("--- Combined Data Summary ---")
print(paste("Expected Rows:", nrow(spotify_clean) + nrow(bmw_clean)))
print(paste("Actual Rows:", nrow(combined_data)))

print("--- Head of Combined Data ---")
print(head(combined_data))

print("--- Tail of Combined Data ---")
print(tail(combined_data))
