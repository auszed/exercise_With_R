# load the packages
library(tidyverse)

# Add thdatasets::
data("diamonds")

# print only the 1st values
head(diamonds)

#this can give us some information about the data

# Compactly display the internal structure of an R object, a diagnostic function and an alternative to summary 
# (and to some extent, dput). Ideally, only one line for each 'basic' structure is displayed. It is especially 
# well suited to compactly display the (abbreviated) contents of (possibly nested) lists. The idea is to give
# reasonable output for any R object. It calls args for (non-primitive) function objects.
str(diamonds)

# give us the col name
colnames(diamonds)
glimpse(diamonds)

# create a new column
mutate(diamonds, carat_2 = carat * 100)


# here its some info on how to create a DATAFRAME
# 
# ```{r}
# names <- c("", "", "", "")
# ```


# importing data we can also import excel files here
pacman::p_load(pacman, rio)
hotel_bookings <- import("~/CourseFiles-20220316T104105Z-001/apps/hotel_bookings.csv")

# we can only use the rio library to import the data
library(rio)
hotel_bookings <- import("~/CourseFiles-20220316T104105Z-001/apps/hotel_bookings.csv")

# ways to import data using tidy framework
read_csv(): comma-separated values (.csv) files

read_tsv(): tab-separated values files

read_delim(): general delimited files

read_fwf(): fixed-width files

read_table(): tabular files where columns are separated by white-space

read_log(): web log files


# The readr package comes with some sample files from built-in datasets that you can use for example code. To list the sample files,
# you can run the readr_example() function with no arguments.
readr_example()

# example on how to import the data
read_csv(readr_example("mtcars.csv"))

# importing data framework for excel
library(readxl)
readxl_example()

# importing the data
read_excel(readxl_example("type-me.xlsx"))


head(hotel_bookings)
colnames(hotel_bookings)

# using select from and we create a new table using the existing one
new_df <- select(hotel_bookings, country , adults, children  )
head(new_df)

fruit <- c("Lemon", "Blueberry", "Grapefruit", "Mango", "Strawberry")
rank <- c(4, 2, 5, 3, 1)

fruit_ranks <- data.frame(fruit, rank)

fruit_ranks


library(tidyverse) 

data(diamonds)

View(diamonds)


# create a Tidy manually
tribble(~number, ~letter,   ~greek,
        1,     "a",  "alpha",
        2,     "b",   "beta",
        3,     "c",  "gamma")


# here we get a tibble
as_tibble(diamonds)
typeof(diamonds)


# we converted again as data frame
as.data.frame(diamonds)
typeof(diamonds)


# display list of availabldata(
data()



data(mtcars)







