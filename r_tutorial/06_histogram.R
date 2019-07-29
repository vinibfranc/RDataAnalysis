# Why use barplot: shape, gaps, outliers and symmetry

library(datasets)

?iris
head(iris)

# Basic histograms

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# Histogram by groups

par(mfrow = c(3, 1))

hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for setosa",
     xlab = "",
     col = "blue")


hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for setosa",
     xlab = "",
     col = "green")