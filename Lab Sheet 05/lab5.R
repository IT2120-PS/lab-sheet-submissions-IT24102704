setwd("C:\\Users\\it24102704\\Desktop\\IT24102704")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

breaks <- seq(20, 70, length.out = 10)

hist(Delivery_Times$Delivery_Time, breaks = breaks, right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "lightblue", border = "black")


breaks <- seq(20, 70, length.out = 10)

hist_data <- hist(Delivery_Times$Delivery_Time, breaks = breaks, plot = FALSE, right = FALSE)
cum_freq <- cumsum(hist_data$counts)


plot(hist_data$breaks[-1], cum_freq, type = "o", col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency")

