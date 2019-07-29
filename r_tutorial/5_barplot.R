library(datasets)

?mtcars
head(mtcars)

barplot(mtcars$cyl)
cylinders <- table(mtcars$cyl)
barplot(cylinders)

