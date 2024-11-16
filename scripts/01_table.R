# Summary statistics
summary_slp <- data.frame(
  Variable = c("Age", "Sleep.Duration", "Physical.Activity.Level"),
  Mean = c(mean(slp$Age, na.tm = TRUE), mean(slp$Sleep.Duration, na.rm=TRUE), mean(slp$Physical.Activity.Level, na.rm=TRUE)),
  Median = c(median(slp$Age, na.rm = TRUE), median(slp$Sleep.Duration, na.rm = TRUE), median(slp$Physical.Activity.Level, na.rm = TRUE)),
  SD = c(sd(slp$Age, na.rm = TRUE), sd(slp$Sleep.Duration, na.rm = TRUE), sd(slp$Physical.Activity.Level, na.rm = TRUE))
)

# Display a table
kable(summary_slp, caption = "Summary of Key Variables")