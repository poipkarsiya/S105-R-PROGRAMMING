library(dplyr)
student <- read.csv("C:/Users/DELL/Desktop/siya/Cleaned_Student_Performance.csv")
student_sorted_score <- student |>
  arrange(exam_score)
head(student_sorted_score, 5)
student_sorted_score_desc <- student |>
  arrange(desc(exam_score))
head(student_sorted_score_desc, 5)
student_multi_sort <- student |>
  arrange(gender, desc(exam_score))
head(student_multi_sort, 10)
hardworking_low_attendance <- student |>
  filter(hours_studied > 20) |>
  arrange(attendance)
cat("Top 5 students who studied >20 hrs with lowest attendance:\n")
print(
  hardworking_low_attendance |>
    select(hours_studied, attendance, exam_score) |>
    head(5)
)
