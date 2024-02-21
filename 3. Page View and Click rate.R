#line graph
install.packages("ggplot2")
library(ggplot2)
ggplot(Pages, aes(x = Date)) +
  geom_line(aes(y = ClickthroughRate, color = "Click-through Rate")) +
  geom_line(aes(y = PageViews / max(PageViews) * max(ClickthroughRate), color = "Page Views")) +
  scale_y_continuous(sec.axis = sec_axis(~. * max(Pages$PageViews) / max(Pages$ClickthroughRate), name = "Page Views")) +
  labs(title = "Line Graph for Click-through Rate and Page views",
       x = "Date",
       y = "Click-through Rate (%)") +
  scale_color_manual(name = "Metrics", values = c("Click-through Rate" = "orange", "Page Views" = "red")) +
  theme_minimal()


#Area chart
install.packages("ggplot2")
library(ggplot2)
ggplot(Pages, aes(x = Date)) +
  geom_area(aes(y = ClickthroughRate, fill = "Click-through Rate"), alpha = 0.5) +
  geom_line(aes(y = PageViews / max(Pages$PageViews) * max(Pages$ClickthroughRate), color = "Page Views")) +
  scale_y_continuous(sec.axis = sec_axis(~. * max(Pages$PageViews) / max(Pages$ClickthroughRate), name = "Page Views")) +
  labs(title = "Page views and Click-Through Rate Over time",
       x = "Date",
       y = "Click-through Rate (%)") +
  scale_color_manual(name = "Metrics", values = c("Click-through Rate" = "blue", "Page Views" = "red")) +
  theme_minimal()


#scatter plot
install.packages("ggplot2")
library(ggplot2)
# Create scatter plot with dual axes
ggplot(Pages, aes(x = Date)) +
  geom_point(aes(y = ClickthroughRate, color = "Click-through Rate"), alpha = 0.7) +
  geom_point(aes(y = PageViews / max(Pages$PageViews) * max(Pages$ClickthroughRate), color = "Page Views"), alpha = 0.7) +
  scale_y_continuous(sec.axis = sec_axis(~. * max(Pages$PageViews) / max(Pages$ClickthroughRate), name = "Page Views")) +
  labs(title = "Scatter Plot of Page Views and Click-Through Rate Over Time",
       x = "Date",
       y = "Click-through Rate",
       color = "Metrics") +
  scale_color_manual(name = "Metrics", values = c("Click-through Rate" = "blue", "Page Views" = "red")) +
  theme_minimal()
