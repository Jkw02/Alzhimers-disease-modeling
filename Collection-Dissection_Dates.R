library(ggplot2)
library(tidyr)


data <- data.frame(
  Date = c("19th-25th", "22nd-28th", "23rd-29th", "24th-30th", "25th-31st", "26th-1st", "29th-4th", "30th-5th", "31st-6th"),
  Aβ_wt = c(1, 2, 3, 3, 2, 2, 1, 3, 4),
  W1118 = c(NA, NA, 5, 2, 3, 1, 2, 5, 6),
  Arctic = c(NA, NA, NA, 1, 2, NA, NA, 2, 1),
  Dutch = c(NA, NA, 2, 1, 1, NA, 5, 3, 8)
)


data_long <- pivot_longer(data, cols = -Date, names_to = "Group", values_to = "Count")


ggplot(data_long, aes(x = Date, y = Count, fill = Group)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Count of Different Groups Over Time", x = "Collection-Dissection Dates", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
