install.packages("ggplot2")
library(ggplot2)

# print


# geom_boxplot & geom_violin

ggplot(airquality, aes(x = Month, y = Temp, group = Month)) +
  geom_boxplot() 

ggplot(airquality, aes(x = Month, y = Temp, group = Month)) +
  stat_boxplot(geom ="errorbar", width = 0.25) + 
  geom_boxplot() 

ggplot(airquality, aes(x = Month, y = Temp, group = Month)) +
  geom_violin()

ggplot(airquality, aes(x = Month, y = Temp, 
                       group = Month, fill = Month)) +
  geom_violin()

ny <- airquality
ny$Month <- factor(month.abb[ny$Month],
                   levels = month.abb,
                   ordered = TRUE)

ggplot(ny, aes(x = Month, y = Temp, 
               group = Month, fill = Month)) +
  geom_boxplot() + scale_fill_brewer(palette = "Pastel1")

ny$Windy <- ifelse(ny$Wind > 10, "Windy", "Not Windy")

ggplot(ny, aes(x = Month, y = Temp, group = Month, fill = Month)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Pastel1") +
  facet_wrap(~ Windy)

# geom_histogram

ggplot(ny, aes(x = Temp)) +
  geom_histogram(color = "White")
ggplot(ny, aes(x = Temp)) +
  geom_histogram(color = "White", bins = 10)
ggplot(ny, aes(x = Temp)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0)
ggplot(ny, aes(x = Temp, fill = Windy)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0)

# geom_density

ggplot(ny, aes(x = Temp)) +
  geom_density()
ggplot(ny, aes(x = Temp, colour = Windy)) +
  geom_density()
ggplot(ny, aes(x = Temp, colour = Windy, fill = Windy)) +
  geom_density(alpha = 0.25)

# geom_histogram + geom_density

ggplot(ny, aes(x = Temp, y = ..density..)) +
  geom_histogram(color = "White", binwidth = 5, boundary = 0, alpha = 0.5) +
  geom_density()

# geom_bar

tdf <- as.data.frame(Titanic)

ggplot(tdf, aes(x = Class, weight = Freq)) +
  geom_bar()
?Titanic
ggplot(tdf, aes(x = Class, weight = Freq, fill = Sex)) +
  geom_bar()
ggplot(tdf, aes(x = Class, weight = Freq, fill = Sex)) +
  geom_bar(position = position_dodge())
ggplot(tdf, aes(x = Class, weight = Freq, fill = Sex)) +
  geom_bar(position = position_fill())

# pie chart

pie <- ggplot(tdf[tdf$Sex == "Male", ],
              aes(x = "Male", weight = Freq,
                  fill = Class)) +
  geom_bar(); pie

pie <- pie + coord_polar(theta = "y"); pie
pie <- pie + theme(axis.text = element_blank(),
                   axis.title.x = element_blank(),
                   axis.title.y = element_blank(),
                   axis.ticks = element_blank(),
                   panel.border = element_blank(),
                   panel.grid = element_blank()); pie

# geom_line (extra)

air <- AirPassengers
Year <- as.numeric(time(AirPassengers))
Passengers <- as.matrix(AirPassengers)
air <- data.frame(Year, Passengers)

airG <- ggplot(air, aes(x = Year, 
                        y = Passengers)) +
  scale_x_continuous(breaks = 
                       unique(ceiling(air$Year))) +
  geom_line(); airG

?AirPassengers

# aggregate

Year <- as.numeric(time(AirPassengers))
Year <- trunc(Year)
Passengers <- as.matrix(AirPassengers)
air <- data.frame(Year, Passengers)

airMean <- aggregate(air$Passengers, list(air$Year), mean)
colnames(airMean) <- c("Year", "Passengers")

ggplot(airMean, aes(x = Year, y = Passengers)) +
  geom_line() +
  scale_x_continuous(breaks = airMean$Year)

airG + geom_line(data = airMean, colour = "red",
                 aes(x = Year + 0.5)) +
  geom_point(data = airMean, colour = "red",
             aes(x = Year + 0.5))

# aggregate (extra)

ny <- airquality
ny$Month <- factor(month.abb[ny$Month],
                   levels = month.abb,
                   ordered = TRUE)

ny$Windy <- ifelse(ny$Wind > 10, "Windy", "Not Windy")

nyMedian <- aggregate(ny[c("Ozone", "Solar.R", "Temp")],
                      list(ny$Month, ny$Windy),
                      median, na.rm = TRUE)
colnames(nyMedian) <- c("Month", "Windy", "Ozone", "Solar.R", "Temp")

nyMedian

ggplot(nyMedian, aes(x = Month, y = Temp,
                     group = Windy,
                     colour = Windy)) +
  geom_line() + geom_point() +
  ylab("Median Temperature")

ggplot(nyMedian, aes(x = Month, y = Temp,
                     group = Windy,
                     colour = Windy)) +
  geom_line() + geom_point() +
  ylab("Median Temperature") +
  facet_wrap(~ Windy) +
  theme(legend.position = "none")
