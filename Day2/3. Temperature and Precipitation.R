#Line plot
install.packages("ggplot2")
library(ggplot2)

Temperature$Date <- as.Date(Temperature$Date, format = "%m/%d/%Y")

melted_data <- reshape2::melt(Temperature, id.vars = "Date")

ggplot(melted_data, aes(x = Date, y = value, color = variable, linetype = variable)) +
  geom_line() +
  geom_point() +
  labs(title = "Temperature and Precipitation",
       x = "Date",
       y = "Value") +
  scale_color_manual(values = c("red", "blue", "green", "purple"),
                     name = "Station",
                     labels = c("StationA_Temperature", "StationA_Precipitation", "StationB_Temperature", "StationB_Precipitation")) +
  scale_linetype_manual(values = c("solid", "dashed", "solid", "dashed"),
                        name = "Variable",
                        labels = c("StationA_Temperature", "StationA_Precipitation", "StationB_Temperature", "StationB_Precipitation")) +
  scale_x_date(date_breaks = "1 day", date_labels = "%b %d, %Y") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
