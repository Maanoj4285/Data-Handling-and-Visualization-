#Grouped Barchart
install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)
food_melted <- melt(food, id.vars = "Age")
ggplot(food_melted, aes(x = Age, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Grouped Bar Graph of Daily Consumption by Age Group",
       x = "Age Group",
       y = "Daily Consumption") +
  scale_color_manual(values = c("Dairy" = "orange", "StapleFood" = "pink", "HighCalFood" = "lightblue", "Supplements" = "purple"))


#Scatter Plot
# Install and load necessary libraries
install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)
food_melted <- melt(food, id.vars = "Age")
ggplot(food_melted, aes(x = Age, y = value, color = variable)) +
  geom_point() +
  labs(title = "Scatter Plot of Daily Consumption by Age Group",
       x = "Age Group",
       y = "Daily Consumption") +
  scale_color_manual(values = c("Dairy" = "orange", "StapleFood" = "pink", "HighCalFood" = "lightblue", "Supplements" = "purple"))



#stacked bar chart
install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)
food_melted <- melt(food, id.vars = "Age")
ggplot(food_melted, aes(x = Age, y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  labs(title = "Sctacked Bar Graph for Daily Consumption by Age Group",
       x = "Age Group",
       y = "Daily Consumption") +
  scale_color_manual(values = c("Dairy" = "orange", "StapleFood" = "pink", "HighCalFood" = "lightblue", "Supplements" = "purple"))
