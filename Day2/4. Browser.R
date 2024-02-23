#scatter plot
install.packages("ggplot2")
install.packages("plotly")
library(ggplot2)
library(plotly)

ggplot(Browser, aes(x = Year, y = Users, color = Browser)) +
  geom_line() +
  geom_point() +
  labs(title = "Internet Users Over 5 Years by Browser",
       x = "Year",
       y = "Users (in millions)",
       color = "Browser") +
  theme_minimal()

interactive_plot <- ggplotly()

htmlwidgets::saveWidget(interactive_plot, "Internet_Users.html")


