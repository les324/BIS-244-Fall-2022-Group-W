library(tidyverse)
library(gapminder)
library(here)
library(patchwork)

project <- read_csv(here("244.csv"))
View(project)
attach(project)

# Variables for the data
names(project)

# Chances of Winning Based Upon On Base Percentage
x <- project$OBP
y <- project$`W-L%`
plot(project$`W-L%` ~project$OBP, main = "Chances of Winning Based Upon On Base Percentage", xlab="On Base Percentage", ylab="Win Percentage" )
abline(lm(y ~ x, data = project), col = "blue")

# Chances of Winning Based Upon Batting Average per MLB Team
x <- project$BA
y <- project$`W-L%`
plot(project$`W-L%` ~ project$BA, main = "Chances of Winning Based Upon Batting Average per MLB Team", xlab="Batting Average", ylab="Win Percentage" )
abline(lm(y ~ x, data = project), col = "red")

# Chances of Winning Based Upon Sacrificed Hits per MLB Team
x <- project$SH
y <- project$`W-L%`
plot(project$`W-L%` ~ project$SH, main = "Chances of Winning Based Upon Sacrificed Hits per MLB Team", xlab="Sacrificed Hits", ylab="Win Percentage" )
abline(lm(y ~ x, data = project), col = "green")
