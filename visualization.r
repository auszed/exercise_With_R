# Visualization
library(tidyverse)

library(palmerpenguins)

data(penguins)
View(penguins)


# -----------scaller plots--------------------
# This 2 plot the same graphic
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, 
                                                   low="red", high="yellow") )
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()


ggplot(data = penguins, mapping = aes(y = flipper_length_mm)) +  geom_histogram()


# change color, size, form and alpha in ggplot
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g
                                      ,shape = species, color = species, size = species, alpha = body_mass_g
                                      )) +  geom_point() 


# shows trends with plots
ggplot(data = penguins) +
  geom_smooth (mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point (mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species))

# show onlni trend lines of the values
# shows trends
ggplot(data = penguins) +
  geom_smooth (mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))
?geom_smooth

# It adds a small amount of random variation to the location of each point, and is a useful 
# way of handling overplotting caused by discreteness in smaller datasets.
?geom_jitter
ggplot(data = penguins) +
  geom_jitter (mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))


# -----------bar charts--------------------
# verify the rows
str(diamonds)

# use bar chart
ggplot(data = diamonds) + 
  # the bar charts automatically counts the number of data we have
  geom_bar(mapping = aes(x = cut, fill = clarity))


# ----------------- Aesthetics and facets-----------------

# facet_wrap helps to distribut the data in several charts
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_wrap(~species)


# using othe data source
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color, fill = cut))+
facet_wrap(~cut)

# using facet_grid()
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(sex~species)


# organize data based on sex
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(~sex)


# --------------------------------------
#   Based on the bar chart you created in Step 4, which distribution type has the
# most number of bookings?
#   ---------------------------------------

library(rio)
hotel_bookings <- import("~/CourseFiles-20220316T104105Z-001/apps/hotel_bookings.csv")

str(hotel_bookings)


ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = distribution_channel))
          


# using the filter of year to manage the plot
hotel_bookings %>% 
  filter(arrival_date_year == 2017) %>% 
   ggplot(aes(x = distribution_channel, fill = distribution_channel)) + geom_bar()
           
           

# ---------------------------------------
# In Step 5 of this activity, you created a data frame onlineta_city_hotels_v2. What is the 
# lead time in the first row created in this data frame?       
#   ---------------------------------------           

# Your stakeholder asked about the group of guests who typically make early bookings, and this plot showed that many of these guests do not have children. 
# 
# Now, your stakeholder wants to run a family-friendly promotion targeting key market segments. She wants to know which market segments generate the largest number of bookings, and where these bookings are made (city hotels or resort hotels). 
# 
# First, you decide to create a bar chart showing each hotel type and market segment. You use different colors to represent each market segment: 


## Step 2: Refresh Your Memory

# By now, you are pretty familiar with this data set. But you can refresh your memory with the `head()` and `colnames()` 
# functions. Run two code chunks below to get at a sample of the data and also preview all the column names:
  

colnames(hotel_bookings)

# You decide to create a bar chart showing each hotel type and market segment. 
# You use different colors to represent each market segment:
  
# market segmentation
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))


# You decide to use the facet_wrap() function to create a separate plot for each market segment: 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)


## Step 5: Filtering


# Use the `filter()` function to create a data set that only includes the data you want: 
  
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))

View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")


# This code chunk generates the same data frame by using the `View()` function:
View(onlineta_city_hotels_v2)


# Title and subtitle
?labs

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
 labs( title = "palmerpenguins", subtitle = "data showing the lengh based on mass",
        caption  = "data collected by Dr. Kristen" ) +
 facet_grid(sex~species)
   

anotate text inside the cacheGenericsMetaData()
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g
                                      ,shape = species, color = species, size = species, alpha = body_mass_g
)) +  geom_point() + annotate("text", x =210, y = 3000, label= "adding text in the chart")
