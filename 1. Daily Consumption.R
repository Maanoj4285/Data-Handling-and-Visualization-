#Grouped Barchart
install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)

# Assuming 'food' is the name of your data frame
# If you read the data using read.csv or read_excel, make sure to store it in a variable named 'food'

# Melt the data for ggplot
food_melted <- melt(food, id.vars = "Age")

# Create the stacked bar graph using ggplot2
ggplot(food_melted, aes(x = Age, y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  labs(title = "Daily Consumption by Age Group",
       x = "Age Group",
       y = "Daily Consumption") +
  scale_fill_manual(values = c("Dairy" = "blue", "StapleFood" = "green", "HighCalFood" = "red", "Supplements" = "purple"))



#Scatter Plot
install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)

# Assuming 'food' is the name of your data frame
# If you read the data using read.csv or read_excel, make sure to store it in a variable named 'food'

# Melt the data for ggplot
food_melted <- melt(food, id.vars = "Age")

# Create the scatter plot using ggplot2
ggplot(food_melted, aes(x = Age, y = value, color = variable)) +
  geom_point() +
  labs(title = "Scatter Plot of Daily Consumption by Age Group",
       x = "Age Group",
       y = "Daily Consumption") +
  scale_color_manual(values = c("Dairy" = "blue", "StapleFood" = "green", "HighCalFood" = "red", "Supplements" = "purple"))



#Grouped bar chart
install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)

# Assuming 'food' is the name of your data frame
# If you read the data using read.csv or read_excel, make sure to store it in a variable named 'food'

# Melt the data for ggplot
food_melted <- melt(food, id.vars = "Age")

# Create the grouped bar graph using ggplot2
ggplot(food_melted, aes(x = Age, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Grouped Bar Graph of Daily Consumption by Age Group and Category",
       x = "Age Group",
       y = "Daily Consumption") +
  scale_fill_manual(values = c("Dairy" = "blue", "StapleFood" = "green", "HighCalFood" = "red", "Supplements" = "purple"))
