# Data
age_groups <- c("0-10", "11-30", "31-50", "51-80")
dairy <- c(50, 35, 25, 40)
staple_food <- c(30, 45, 55, 40)
high_calorie_food <- c(10, 15, 13, 4)
supplements <- c(10, 5, 7, 16)

# Create a data frame
df <- data.frame(Age = age_groups, Dairy = dairy, `Staple Food` = staple_food, `High-Calorie Food` = high_calorie_food, Supplements = supplements)

# Stacked Bar Chart
barplot(as.matrix(df[, -1]), beside = TRUE, col = rainbow(ncol(df)-1), legend.text = colnames(df[, -1]), args.legend = list(x = "topright", bty = "n"),
        names.arg = df$Age, ylim = c(0, 120), main = "Stacked Bar Chart", xlab = "Age Group", ylab = "Daily Consumption")
