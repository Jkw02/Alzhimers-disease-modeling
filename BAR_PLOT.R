import matplotlib.pyplot as plt
import numpy as np

# Data
labels <- c('Arctic', 'W1118', 'Aβ-wt', 'Dutch')
gfp_ve <- c(71, 18, 14, 426)
minicores <- c(1, 16, 5, 48)
total_abnormal <- c(72, 19, 19, 57)

# Combine data into a matrix 
data <- rbind(gfp_ve, minicores, total_abnormal)

# Barplot
barplot_heights <- barplot(data, beside = TRUE, col = c("steelblue", "darkorange", "darkgreen"), 
                           legend = c("% GFP-ve", "% minicores", "% total abnormal"), ylim = c(0, 500), 
                           names.arg = labels, main = "Comparison of GFP-ve, Minicores, and Total Abnormal Cores by Strain", 
                           ylab = "Percentage")

# Add labels on top of the bars
text(x = barplot_heights, y = data + 20, labels = as.character(data), cex = 0.8, pos = 3)




# Data
labels = ['Arctic', 'W1118', 'Aβ-wt', 'Dutch']
gfp_ve = [71, 18, 14, 426]
minicores = [1, 16, 5, 48]
total_abnormal = [72, 19, 19, 57]

x = np.arange(len(labels))  # the label locations
width = 0.2  # the width of the bars

fig, ax = plt.subplots(figsize=(10, 6))
rects1 = ax.bar(x - width, gfp_ve, width, label='% GFP-ve')
rects2 = ax.bar(x, minicores, width, label='% minicores')
rects3 = ax.bar(x + width, total_abnormal, width, label='% total abnormal')

# Add some text for labels, title, and custom x-axis tick labels, etc.
ax.set_xlabel('Strain')
ax.set_ylabel('Percentage')
ax.set_title('Comparison of GFP-ve, Minicores, and Total Abnormal Cores by Strain')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.legend()

# adds labels on top of bars
def add_labels(rects):
  for rect in rects:
  height = rect.get_height()
ax.annotate(f'{height}%',
            xy=(rect.get_x() + rect.get_width() / 2, height),
            xytext=(0, 3),  # 3 points vertical offset
            textcoords="offset points",
            ha='center', va='bottom')

add_labels(rects1)
add_labels(rects2)
add_labels(rects3)

plt.ylim(0, 500)  # Setting y limit for better visualization
plt.tight_layout()

# Save and display 
plt.show()

