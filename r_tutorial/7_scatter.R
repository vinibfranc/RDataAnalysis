# Association between 2 quantitativa variables

# See if the distribution is linear, if there is a spread, if there are outliers and look for correlation

library(datasets)

?mtcars
head(mtcars)

par(mfrow = c(1, 1))

hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt, mtcars$mpg)

plot(mtcars$wt, mtcars$mpg,
     pch = 19,         # Solid circle
     cex = 1.5,        # Make 150% size
     col = "#cc0000",  # Red
     main = "MPG as a Function of Weight of Cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG")

