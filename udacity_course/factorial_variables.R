setwd('data')
reddit <- read.csv('reddit.csv')
setwd('..')
str(reddit)
table(reddit$employment.status)
summary(reddit)

#ordered factorial
levels(reddit$age.range)

library(ggplot2)
qplot(data=reddit, x=age.range)

reddit$gender
reddit$military.service
reddit$children
reddit$country
reddit$state
reddit$income.range
reddit$cheese

qplot(data=reddit, x=income.range)

reddit$age.range <- ordered(reddit$age.range, levels=c('Under 18', '18-24', '25-34', '35-44', '45-54', '55-64', '65 or Above'))
qplot(data=reddit, x=age.range)

