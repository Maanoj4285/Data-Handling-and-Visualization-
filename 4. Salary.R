#Bar Graph
install.packages("ggplot2")
library(ggplot2)
Timeseries$Month <- factor(Timeseries$Month, levels = c("January", "February", "March", "April", "May"))
ggplot(Timeseries, aes(x = Month, y = Sales)) +
  geom_bar(stat = "identity", fill = "orange", alpha = 0.7) +
  labs(
    title = "Monthly Sales Bar Chart",
    x = "Month",
    y = "Sales (in $)"
  ) +
  theme_minimal()


#scatter plot
install.packages("ggplot2")
library(ggplot2)
ggplot(Timeseries, aes(x = Month, y = Sales)) +
  geom_point(color = "orange", size = 4) +
  labs(
    title = "Monthly Sales Scatter Plot",
    x = "Month",
    y = "Sales (in $)"
  ) +
  theme_minimal()

#line plot
install.packages("ggplot2")
library(ggplot2)
ggplot(Timeseries, aes(x = Month, y = Sales, group = 1)) +
  geom_point(color = "black", size = 2) +
  geom_line(color = "red", size = 1) +
  labs(
    title = "Monthly Sales Line Plot",
    x = "Month",
    y = "Sales (in $)"
  ) +
  theme_minimal()



