# install packages:-

install.packages("tidyverse")
install.packages("tidyr")

# load the packages:-

library(tidyverse)
library(tidyr)

Id <- 1:10
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(Id,name,job_title)
View(employee)

#separate function in R:

separate(employee,name,into=c("first_name","last_name"),sep=" ")

# unite function in R:
Id <- 1:10
first_name <- c("John ", "Rob ", "Rachel", "Christy", "Johnson ", "Candace", "Carlson ", "Pansy ", "Darius", "Claudia")

last_name <- c("Mendes","Stewart","Abrahamson","Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


employee <- data.frame(Id,first_name,last_name,job_title)

unite(employee,'name',first_name,last_name,sep =" ")

# see the penguine data frame
install.packages("ggplot2")
library(ggplot2)
View(penguins)
data()
data(package = .packages(all.available = TRUE))
install.packages("palmerpenguins")
library(palmerpenguins)
View(penguins)
# mutate function in R:
penguins %>%
  mutate(body_mass_kg=body_mass_g/1000)
View(penguins)
penguins %>%
  mutate(flipper_lenght_m=flipper_length_mm/1000)
  View(penguins)