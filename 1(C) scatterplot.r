# Install and load necessary packages
install.packages("ggplot2")
library(ggplot2)

# Create the data frame
data <- data.frame(
  Age = c("0-10", "11-30", "31-50", "51-80"),
  Dairy = c(50, 35, 25, 40),
  Staple_Food = c(30, 45, 55, 40),
  High_Calorie_Food = c(10, 15, 13, 4),
  Supplements = c(10, 5, 7, 16)
)
print(data)
# Reshape the data for plotting
data_long <- tidyr::gather(data, key = "Category", value = "Value", -Age)
# Scatter Plot
ggplot(data_long, aes(x = Age, y = Value, color = Category)) +
  geom_point() +
  labs(title = "Scatter Plot", y = "Daily Consumption")
