library(dplyr)
spotify <- read.csv("C:/Users/itlab/OneDrive/Documents/S105/spotify_data clean.csv")
cat("\n--- Original Dataset (First 3 rows) ---\n")
print(head(spotify, 3))
names(spotify)
selected_cols <- spotify %>%
  select(track_name, artist_name, track_popularity)
cat("\n--- Selected Specific Columns ---\n")
print(head(selected_cols, 3))
range_cols <- spotify %>%
  select(artist_name:album_name)
cat("\n--- Selected Range of Columns (artist_name to album_name) ---\n")
print(head(range_cols, 3))
starts_with_track <- spotify %>%
  select(starts_with("track"))
cat("\n--- Selected Columns Starting with 'track' ---\n")
print(head(starts_with_track, 3))
dropped_one <- spotify %>%
  select(-explicit)
cat("\n--- Column 'explicit' Dropped ---\n")
print(names(dropped_one))
dropped_multiple <- spotify %>%
  select(-artist_followers, -artist_genres)
cat("\n--- Columns 'artist_followers' and 'artist_genres' Dropped ---\n")
print(names(dropped_multiple))
dropped_range <- spotify %>%
  select(-(album_id:album_total_tracks))
cat("\n--- Dropped Range: album_id to album_total_tracks ---\n")
print(names(dropped_range))
