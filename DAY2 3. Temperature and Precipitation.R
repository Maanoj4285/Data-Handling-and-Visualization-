install.packages("ggplot2")
library(ggplot2)

data <- data.frame(
  Date = as.Date(c("01/01/2024", "02/01/2024", "03/01/2024", "04/01/2024", "05/01/2024", "06/01/2024"), format="%m/%d/%Y"),
  Station_A_Temperature = c(25.0, 24.5, 26.2, 23.8, 25.5, 23.0),
  Station_A_Precipitation = c(0.1, 0.0, 0.3, 0.2, 0.1, 0.4),
  Station_B_Temperature = c(23.5, 22.8, 25.0, 22.5, 24.5, 21.8),
  Station_B_Precipitation = c(0.2, 0.3, 0.1, 0.0, 0.4, 0.2)
)

library(tidyr)
data_long <- gather(data, key = "Variable", value = "Value", -Date)

ggplot(data_long, aes(x = Date, y = Value, color = Variable, linetype = Variable)) +
  geom_line(size = 1) +
  labs(x = "Date", y = "Value", title = "Temperature and Precipitation Over Time for Station A and Station B") +
  scale_color_manual(values = c("Station_A_Temperature" = "red", "Station_A_Precipitation" = "blue", 
                                "Station_B_Temperature" = "green", "Station_B_Precipitation" = "purple")) +
  scale_linetype_manual(values = c("Station_A_Temperature" = "solid", "Station_A_Precipitation" = "solid", 
                                   "Station_B_Temperature" = "dashed", "Station_B_Precipitation" = "dashed")) +
  theme_minimal()
