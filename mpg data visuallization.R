#INSTALL PACKAGES
install.packages("ggplot2")
install.packages("dplyr" , type = "source")

#LOAD LIBRARIES
library(ggplot2)
library(dplyr)


# The mpg Data is available on R Studio
# View the first few rows of the mpg dataset
head("mpg")

# Scatter plot: Engine Size (displ) vs. Highway MPG (hwy)
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "blue", size = 2) +
  labs(title = "Engine Size vs. Highway MPG",
       x = "Engine Size (displacement in liters)",
       y = "Highway MPG") +
  theme_minimal()

# Box plot: Highway MPG by Car Class
ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(title = "Highway MPG by Car Class",
       x = "Car Class",
       y = "Highway MPG") +
  theme_minimal()

# Hypothetical dataset for engine displacement over time
year <- c(2000, 2002, 2004, 2006, 2008, 2010)
displacement <- c(2.0, 2.1, 2.3, 2.5, 2.6, 2.8)
data_line <- data.frame(year, displacement)

# Line plot: Engine displacement over time
ggplot(data_line, aes(x = year, y = displacement)) +
  geom_line(color = "purple", size = 1) +
  geom_point(size = 3, color = "purple") +
  labs(title = "Engine Displacement Over Time",
       x = "Year",
       y = "Displacement (liters)") +
  theme_minimal()


# Histogram: Distribution of Highway MPG
ggplot(mpg, aes(x = hwy)) +
  geom_histogram(binwidth = 2, fill = "lightgreen", color = "black") +
  labs(title = "Distribution of Highway MPG",
       x = "Highway MPG",
       y = "Frequency") +
  theme_minimal()


# Scatter plot with a different theme
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point(size = 2) +
  labs(title = "Engine Size vs. Highway MPG by Car Class",
       x = "Engine Size (L)",
       y = "Highway MPG") +
  theme_classic() +
  theme(legend.position = "bottom")
