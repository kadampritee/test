install.packages("Tmisc")
library(Tmisc)
data("quartet")
View(quartet)
install.packages("tidyverse")
library(tidyverse)
library(ggplot2)
# group_by clause in R:
quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

# visualizing the data:
View(quartet)
ggplot(quartet,aes(x,y))+geom_point()+geom_smooth(method = lm,se=FALSE)+facet_wrap(-set)

#
install.packages("datasauRus")
library(datasauRus)
ggplot(quartet,aes(x,y))+geom_point()+geom_smooth(method = lm,se=FALSE)+facet_wrap(-set)
