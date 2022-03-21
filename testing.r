# here example variable
fist_var <- "variableeeex"
secoind_var <- 12
vec_1 <- c(12, 31, 46, 3546, 2, 54)
vec_1
typeof(c(1L, 3L))
istruex <- TRUE
# calculate the length
length(vec_1)

# verify the type of value
is.logical(istruex)
is.integer(secoind_var)
is.double(secoind_var)
is.character(fist_var)

# creating lists
listados <- list("a", 1L, 1.5, TRUE)


z <- list(list(list(1, 3, 5)))
# function to discover the structure of our second example.
str(z)

# Lists, like vectors, can be named. You can name the elements of a list when you first create it with the list() function:
x <- list("Chicago" = 1, "New York" = 2, "Los Angeles" = 3)
x$Chicago

# If you haven't already installed tidyverse, you can use the install.packages() function to do so:
install.packages("tidyverse")

library(tidyverse)
library(lubridate)

# get today date
today()

# get the timestamp of now
now()

# Converting from strings
ymd("2021-01-20")

mdy("January 20th, 2021")

dmy("20-Jan-2021")

ymd(20210120) - ymd(20210420)

# Creating date-time components

s <- ymd_hms("2021-01-20 20:11:59")
s

mdy_hm("01/20/2021 08:01")


year(s)
wday(s)

as_date(now())


dataframex <- data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
dataframex


# create files

dir.create("destination_folder")

file.create("new_text_file.txt")

file.create("new_word_file.docx")

file.create("new_csv_file.csv")


unlink("new_csv_file.csv")


# working with matrix()

ma <- matrix(c(3:8), nrow = 2)
ma

matrix(c(3:8), ncol = 2)



# NA number
is.na(7 / 0)
is.na(0 / 0)


# Arithmetic operators
quarte_1_sales <- 3458967
quarte_2_sales <- 4362786
mid_year <- quarte_1_sales + quarte_2_sales
mid_year

yearrly <- mid_year * 2

yearrly

# In the example below, as t comes after R as per the alphabetical order; hence, t is greater than R.
"tutoriasssssssl" > "z"


# to clean the code, and use indentation
install.packages("styler")


# --------------USANDO ggplot2---------------
# used of ggplot
library(ggplot2)

# select the data
data("iris")

head(iris)

# geom_point = graficamos en puntos

ggplot(
  data = iris,
  mapping = aes(
    x = iris$Petal.Length,
    y = iris$Petal.Width,
    color = iris$Species
  )
) +
  geom_point() +
  # geom_smooth, marca la linea de tendencia
  geom_smooth(method = "lm")


#--------usando lineas--------------------
# new exersice
ggplot(
  data = iris[iris$Species == "setosa", ],
  mapping = aes(
    x = 1:50,
    y = Petal.Width,
    color = Species
  )
) +
  geom_line()

## adding all the species
ggplot(
  data = iris,
  mapping = aes(
    x = rep(1:50, 3),
    y = Petal.Width,
    color = Species
  )
) +
  geom_line()


#--------usando lineas--------------------
ggplot(
  data = iris,
  mapping = aes(
    x = Species,
    y = Petal.Width,
    fill = Species
  )
) +
  geom_boxplot() +
  geom_jitter()

?ggplot



install.packages("gapminder")

library(gapminder)

data(gapminder)

head(gapminder)


install.packages("tidyverse")
library(tidyverse)


head(gapminder)
# Filtamos la nueva tabla
filter(gapminder, country == "Mexico")

# ctlr + shift + m para sacar este symbol %>%
c <- gapminder %>%
  filter(country == "Mexico")


# vida mayor menor a 40 en el ano 2022
gapminder %>%
  filter(lifeExp <= 40, year == 2002)

# cantidad de paises
gapminder %>%
  filter(
    continent == "Asia",
    year == 2007
  ) %>%
  summarise(conteo = n())

# maxima esperanza de vida
gapminder %>%
  summarise(max_lifeExp = max(lifeExp))

# promedio de la esperanza de vida
esperanza <- gapminder %>%
  group_by(year) %>%
  summarise(promedio_de_la_vida = mean(lifeExp))


ggplot(data = esperanza, mapping = aes(x = promedio_de_la_vida, y = year)) +
  geom_point()
