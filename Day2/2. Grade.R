#mosaic plot
library(ggplot2)

grade_colors <- c("Grade 1" = "blue", "Grade 2" = "green", "Grade 3" = "red")

mosaicplot(SCHOOL ~ NUMBER_OF_STUDENTS + GRADE_LEVEL, data = Grade, main = "Mosaic Plot of School and Grade Level",color=grade_colors)
