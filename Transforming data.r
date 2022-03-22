# transformindata(
# we will be using this feutures
# separate
# unite
# mutate

library(tidyverse)
# some data frames
id <-  c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


employee <- data.frame(id,name,job_title)
head(employee)


# separate datfile.show(
# separate(table, column name, separate things)
employee_separeate <-  separate(employee, name, into = c("fist_name", "last_name"), sep = " ")
employee_separeate

 
# unite columns
# unite(table, name of the column we will be uniting, column names, separation things)
employee_unite <-  unite(employee_separeate,"united_everything", fist_name, last_name,job_title, sep = "-" )
employee_unite

# mutate
# this add a new column with new values
library(palmerpenguins)
view(penguins)

penguins %>% 
  mutate(body_mass_kg= body_mass_g/1000, flipper_length_m=flipper_length_mm /1000)


