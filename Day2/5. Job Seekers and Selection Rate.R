#scatter plot
library(ggplot2)

data_long <- reshape2::melt(Jobseekers, id.vars = c("Year", "Job_Sector"))

ggplot(data_long, aes(x = as.factor(Year), y = value, color = Job_Sector, shape = variable, group = interaction(Job_Sector, variable))) +
  geom_line() +
  geom_point() +
  labs(title = "Job-Seekers Rate and Selection Rate by Year and Job Sector",
       x = "Year",
       y = "Rate",
       color = "Job Sector",
       shape = "Category") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_x_discrete(labels = as.character(unique(data_long$Year)))
