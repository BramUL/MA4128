install.packages("dplyr")

library(dplyr) #put toolkit on work bench

sessionInfo()

#inbuilt Data sets
mtcars
iris

# %>% send data set to command, head revales top ew rows
mtcars %>% head()
mtcars %>% dim()
mtcars %>% nrow()
mtcars %>% ncol()
mtcars %>% names()
mtcars %>% class()

mtcars %>% summary()
iris %>% glimpse()

# dplyr.tidyverse.org

iris2 <- iris %>% filter(iris, Species == "Setosa")

#Error - 2 versions behind

iris3 <- iris %>% filter(Sepal.Length > 5)
iris3 %>% dim()

# How many have sepal length greater that 5.2, 5.4, 5.6?
iris %>% filter(Sepal.Length > 5.2) %>% dim()
