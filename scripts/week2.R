# Load dataset
data(AirPassengers)

# Verify dataset
class(AirPassengers)
View(AirPassengers)

# Convert time series to dataframe
ap_df <- data.frame(
  year = as.numeric(time(AirPassengers)),
  month = cycle(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

# View dataframe
View(ap_df)

#Basic plot
plot(AirPassengers)

#Plot with Title, Axis labels and color
plot(AirPassengers,
     type = 'l',
     lwd = 1.5,
     main='Air Passengers Trend Analysis',
     xlab="months",
     ylab="No of passenegers",
     col = 'pink'
)
points(AirPassengers,
       type = 'o',
       pch = 16,
       col = "blue")
grid()

#Using GGplot

#importing GGplot
library(ggplot2)

ggplot(ap_df, aes(x = year, y = passengers)) +
  geom_line(color = 'darkgreen', linewidth = 0.5) +
  geom_point(color = 'red', size = 1.0) +
  geom_smooth(se = FALSE, color = 'orange') +
  labs(
    title = 'Trend Analysis of Air Passengers',
    subtitle = 'From 1949 - 1960',
    caption = 'Using Built-in AirPassengers Dataset',
    x = 'Year',
    y = 'Number of Passengers'
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 10)
  )

