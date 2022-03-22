# load packages


# he goal of the here package is to enable easy file referencing in project-oriented workflows. In contrast to using setwd(),
# which is fragile and dependent on the way you organize your files, here uses the top-level directory of a project to easily build paths to files.
install.packages("here")

# skimr provides a frictionless approach to summary statistics which conforms to the principle of least surprise,
# displaying summary statistics the user can skim quickly to understand their data. It handles different data types
# and returns a skim_df object which can be included in a pipeline or displayed nicely for the human reader.
install.packages("skimr")

# janitor has simple functions for examining and cleaning dirty data. It was built with beginning and intermediate R users in mind and is optimized
# for user-friendliness. Advanced R users can already do everything covered here, but with janitor they can do it faster and save their thinking for
# the fun stuff.
install.packages("janitor")

# load the libarys
library(here)
library(skimr)
library(janitor)
library(dplyr)

# its a datasets
install.packages("palmerpenguins")
library(palmerpenguins)


# Data Summary
skim_without_charts(penguins)

# resume Data Summary
glimpse(penguins)


# filter the table with select
penguins %>%
  select(-species)


# change the column name with rename
penguins %>%
  rename(new_column_name = island)

# changes the names of individual variables using new_name = old_name syntax; rename_with() renames columns using a function.
rename_with(penguins, toupper)
?rename_with

# This ensures that there's only characters, numbers, and underscores in the names.
# and clen the column names
clean_names(penguins)
?clean_names


# ----------------Organize your data-----------------------------
library(tidyverse)

# diferent ways to organize your data
arrange()
group_by()
filter()

penguins
# we use the - to organize as desending order
penguins_arrange <- penguins %>% arrange(-bill_length_mm)
penguins_arrange

# we goup with island
penguins %>% group_by(island) %>%
  # take out any missing values like NA
  drop_na() %>%
  # try to find the mean accordingly to groups
  summarize(mean_bill_length_mm = mean(bill_length_mm))



# calculate de max()
penguins %>%
  group_by(island, species) %>%
  drop_na() %>%
  # filter some data
  penguins() %>%
  filter(species == "Adelie")





















