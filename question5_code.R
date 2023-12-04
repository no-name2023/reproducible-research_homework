# Loading ggplot2 package
library(ggplot2)

#loading in the csv file 

virus_data <- read.csv("question-5-data/Cui_etal2014.csv")

# Renaming the columns
colnames(virus_data)[colnames(virus_data) == "Genome.length..kb."] <- "genome_length"

colnames(virus_data)[colnames(virus_data) == "Virion.volume..nm.nm.nm."] <- "virion_volumes"

# Verify the changes
print(virus_data)

# Creating a scatter plot with the variables genome_length and virion_volumes
ggplot(virus_data, aes(x = genome_length, y = virion_volumes)) +
  geom_point() +
  labs(title = "Scatter Plot: Virion Volume vs Genome Length",
       x = "genome_length",
       y = "virion_volumes")

# Applying a logarithmic transformation to the data 
virus_data$log_genome_length <- log(virus_data$genome_length)
virus_data$log_virion_volumes <- log(virus_data$virion_volumes)

# Plotting a scatter plot with logarithmic transformation
ggplot(virus_data, aes(x = log_genome_length, y = log_virion_volumes)) +
  geom_point() +
  labs(title = "Scatter Plot: Log-Transformed Virion Volume vs Log-Transformed Genome Length",
       x = "Log-Transformed Genome Length",
       y = "Log-Transformed Virion Volume")

# Fitting a power-law model
power_law_model <- lm(log(virion_volumes) ~ log(genome_length), data = virus_data)

# Extracting the coefficients from the model
alpha <- coef(power_law_model)[2]
beta <- exp(coef(power_law_model)[1])

# Printing the coefficients
cat("Exponent (alpha):", alpha, "\n")
cat("Scaling factor (beta):", beta, "\n")

# Checking the p-values
summary(power_law_model)$coefficients

# Assuming 'power_law_model' is your linear model
p_values <- summary(power_law_model)$coefficients[, "Pr(>|t|)"]

# Print the p-values
print(p_values)

#Loading the ggplot2 package

library(ggplot2)

# Recreating the scatter plot shown in question 5

ggplot(virus_data, aes(x = log(genome_length), y = log(virion_volumes))) +
  geom_point() +  
  geom_smooth(method = "lm", se = TRUE, color = "blue", fill = "lightgrey") +  # Add blue line of best fit with shaded error bracket
  theme_bw() +  # Use a white background with black grid lines
  xlab("log [Genome Length (kb)]") +  # X-axis label with modified text
  ylab("log [Virion Volume (nm^3)]") +  # Y-axis label with modified text
  ggtitle("Scatter Plot to show Log-transformed Virion Volume vs Genome length")  # Plot title

sink(file = "package-versions.txt")
sessionInfo()
sink()

 