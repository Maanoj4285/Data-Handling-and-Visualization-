#Bar graph
x_labels <- paste(Product$ProductID, Product$ProductName, sep = " - ")
barplot(Product$QuantityAvailable, 
        names.arg = x_labels, 
        col = "orange", 
        main = "Bar Graph for Quantity Available for Each Product", 
        xlab = "Product ID - Product Name", 
        ylab = "Quantity", 
        ylim = c(0, max(Product$QuantityAvailable) + 50))


#Pie chart
library(RColorBrewer)
labels <- paste(Product$ProductID, Product$ProductName, sep = " - ")
colors <- brewer.pal(length(labels), "Set2")
pie(Product$QuantityAvailable, labels = labels, col = colors, main = "Pie Chart for Quantity Distribution for Each Product")


#scatter plot
plot(Product$ProductID, Product$QuantityAvailable, 
     main = "Scatter Plot of Quantity Available", 
     xlab = "Product ID", 
     ylab = "Quantity",
     col = "orange",
     pch = 16)
