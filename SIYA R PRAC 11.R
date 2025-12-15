install.packages("tidyr")
library(tidyr)
library(dplyr)
spotify <- read.csv("C:/Users/itlab/OneDrive/Documents/S105/DATASET/spotify_data clean.csv")
head(spotify)
df <- spotify %>%
  select(track_name, track_popularity, artist_popularity)

head(df)
df_long <- df %>%
  pivot_longer(
    cols = c(track_popularity, artist_popularity),
    names_to = "subject",
    values_to = "score"
  )

df_long
df_wide <- df_long %>%
  pivot_wider(
    names_from = subject,
    values_from = score
  )

df_wide
print(head(category_pivot))
