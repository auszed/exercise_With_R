# the data its here
data("ToothGrowth")


# here we view the data
View(ToothGrowth)

# run the library
library(dplyr)


# here we filter the data
filtered_data <- filter(ToothGrowth, dose == 0.5)

# here we sort data
arrange(filtered_data, len)

# here we nested the function
nested_funtion <- arrange(filter(ToothGrowth, dose == 0.5), len)

nested_funtion


# use the pipe operator
using_pipe <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(len)


using_pipe
