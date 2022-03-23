# loading the data

install.packages("Tmisc")
library(Tmisc)
library(tidyverse)

data("quartet")
View(quartet)

# get some details from the data
quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x),mean(y), sd(y))

# plotting the data
ggplot(quartet, aes(x, y)) +
  geom_point() +
  facet_wrap(quartet$set)

# The datasauRus package. The datasauRus creates plots with the Anscombe data in
# different shapes. But let's run it to see that for ourselves. First, you'll
# start off with installing and loading the package.

# This package wraps the awesome Datasaurus Dozen datasets. The Datasaurus Dozen show 
# us why visualisation is important - summary statistics can be the same but distributions 
# can be very different. In short, this package gives a fun alternative to Anscombe's Quartet,
install.packages("datasauRus")
 library(datasauRus)

# important to used this symbol ~~~~~~~~~~~~~~
ggplot(datasaurus_dozen, aes(x = x, y = y, color = dataset)) + geom_point() +
  theme_void() + theme(legend.position = "none") + facet_wrap(~dataset, ncol = 3)

# The bias function
# Basically the bias function finds the average amount that the actual outcome is
# greater than the predicted outcome. If the model is unbiased, the outcome should 
# be pretty close to zero. A high result means that your data might be biased.

install.packages("SimDesign")
library(SimDesign)

actual_temp <-  c(68,70,72,71,67,70)
predicted_temp <-  c(68,70,72,71,67,70)
bias(actual_temp,predicted_temp)
# no bias because the correlation its very similar

predicted_temp2 <-  c(80,50,90,58,39,95)
bias(actual_temp,predicted_temp2)
# no correlation

predicted_temp3 <-  c(67,69,71,71,67,69)
bias(actual_temp,predicted_temp3)
# kind of correlation

actual_sales <-  c(150,203,137,247,116,287)
predicted_sales <- c(200,300,150,250,150,300)
bias(actual_sales, predicted_sales)
























