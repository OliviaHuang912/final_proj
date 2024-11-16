library(ggplot2)

# Figure 1
# Plot sleep duration by occupation
ggplot(slp, aes(x=factor(Occupation), y=Sleep.Duration)) +
  geom_boxplot() +
  labs(title = "Sleep Duration by Occupation",
       x = "Occupation",
       y = "Sleep Duration (hours)") +
  theme_minimal()

# Figure 2
# Scatter plot of physical activity vs sleep duration
ggplot(slp, aes(x = Physical.Activity.Level, y = Sleep.Duration)) +
  geom_point(color = "blue", alpha = 0.6) +
  labs(title = "Relationship Between Physical Activity and Sleep Duration",
       x = "Physical Activity (minutes per day)",
       y = "Sleep Duration (hours per night)") +
  theme_minimal()
