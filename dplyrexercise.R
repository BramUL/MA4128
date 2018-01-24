install.packages("dplyr")

library(dplyr) #put toolkit on work bench

iris %>% group_by(Species) %>%
	   summarize(meanSL = mean(Sepal.Length),
		        varSL = var(Sepal.Length),
		         sdSL = sd(Sepal.Length),
		     medianSL = median(Sepal.Length))

#Exercise
#mtcars data set
#grouping by "cyl"
#mean of "mpg"

mtcars %>% group_by(cyl) %>%
	summarise(meanMPG = mean(mpg),
	        medianMPG = median(mpg),
		      sdMPG = sd(mpg))

mtcars %>% group_by(vs,am) %>%
	summarise(meanMPG = mean(mpg),
	        medianMPG = median(mpg),
		      sdMPG = sd(mpg))

mtcars %>% select(1:4) %>% head(4)
mtcars %>% select(cyl:vs) %>% head(4)

mtcars %>% select(2:4,everything()) %>% head(4)

mtcars %>% mutate(sqrtMPG = sqrt(mpg), logMPG = log(mpg)) %>% 
           select(mpg,sqrtMPG,logMPG, everything()) %>% head(5)

mtcars %>% mutate(sqrtQSEC = sqrt(qsec)) %>% head(5)
