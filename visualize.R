install.packages("maps")
path <- "/Users/Harish/Desktop/r/worldcities.csv"
data <- read.csv(path)
df <- data.frame(data)
library(maps)
map(database = "world")
points(x = df$lat[1:500], y = df$lng[1:500], col = "Red")

cone <- function(x, y){
  sqrt(x ^ 2 + y ^ 2)
}
# prepare variables.
x <- y <- seq(-1, 1, length = 30)
z <- outer(x, y, cone)
# plot the 3D surface
# Adding Titles and Labeling Axes to Plot
persp(x, y, z,
      main="Perspective Plot of a Cone",
      zlab = "Height",
      theta = 30, phi = 15,
      col = "orange", shade = 0.4)

