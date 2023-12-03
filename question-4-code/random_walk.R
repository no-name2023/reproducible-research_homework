# installing the packages

install.packages("ggplot2")
install.packages("gridExtra")

#Loading the packages 

library(ggplot2)
library(gridExtra)

#Performing the random walks. Here I have also added the function to generate a reproducible random walk.

random_walk  <- function (n_steps, seed = NULL) {
  set.seed(seed)
  
  df <- data.frame(x = rep(NA, n_steps), y = rep(NA, n_steps), time = 1:n_steps)
  
  df[1,] <- c(0,0,1)
  
  for (i in 2:n_steps) {
    
    h <- 0.25
    
    angle <- runif(1, min = 0, max = 2*pi)
    
    df[i,1] <- df[i-1,1] + cos(angle)*h
    
    df[i,2] <- df[i-1,2] + sin(angle)*h
    
    df[i,3] <- i
    
  }
  
  return(df)
  
}

#Here I have set the seed for data1 to 36

data1 <- random_walk(500, seed = 36)

#plotting the first random walk 

plot1 <- ggplot(aes(x = x, y = y), data = data1) +
  
  geom_path(aes(colour = time)) +
  
  theme_bw() +
  
  xlab("x-coordinate") +
  
  ylab("y-coordinate")

#Here I have set the seed for data2 to 80 

data2 <- random_walk(500, seed = 80)

#plotting the second random walk 

plot2 <- ggplot(aes(x = x, y = y), data = data2) +
  
  geom_path(aes(colour = time)) +
  
  theme_bw() +
  
  xlab("x-coordinate") +
  
  ylab("y-coordinate")

#arranging both of the plots in a single graph

grid.arrange(plot1, plot2, ncol=2)

sink(file = "package-versions.txt")
sessionInfo()
sink()



